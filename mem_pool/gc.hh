#pragma once
#include <cstddef>
#include <stdint.h>
#include <assert.h>
#include <mutex>

#include "platform.hh"
#include "dtypes.hh"
extern std::mutex gc_perm_lock;

#define GC_PAGE_LG2 14 // log2(size of a page)
#define GC_PAGE_SZ (1 << GC_PAGE_LG2) // 16k

// pool page metadata
typedef struct {
    // index of pool that owns this page
    uint8_t pool_n;
    // Whether any cell in the page is marked
    // This bit is set before sweeping iff there are live cells in the page.
    // Note that before marking or after sweeping there can be live
    // (and young) cells in the page for `!has_marked`.
    uint8_t has_marked;
    // Whether any cell was live and young **before sweeping**.
    // For a normal sweep (quick sweep that is NOT preceded by a
    // full sweep) this bit is set iff there are young or newly dead
    // objects in the page and the page needs to be swept.
    //
    // For a full sweep, this bit should be ignored.
    //
    // For a quick sweep preceded by a full sweep. If this bit is set,
    // the page needs to be swept. If this bit is not set, there could
    // still be old dead objects in the page and `nold` and `prev_nold`
    // should be used to determine if the page needs to be swept.
    uint8_t has_young;
    // number of old objects in this page
    uint16_t nold;
    // number of old objects in this page during the previous full sweep
    uint16_t prev_nold;
    // number of free objects in this page.
    // invalid if pool that owns this page is allocating objects from this page.
    uint16_t nfree;
    uint16_t osize; // size of each object in this page
    uint16_t fl_begin_offset; // offset of first free object in this page
    uint16_t fl_end_offset;   // offset of last free object in this page
    uint16_t thread_n;        // thread id of the heap that owns this page
    char *data;
    uint8_t *ages;
} jl_gc_pagemeta_t;

// Page layout:
//  Newpage freelist: sizeof(void*)
//  Padding: GC_PAGE_OFFSET - sizeof(void*)
//  Blocks: osize * n
//    Tag: sizeof(jl_taggedvalue_t)
//    Data: <= osize - sizeof(jl_taggedvalue_t)

// Memory map:
//  The complete address space is divided up into a multi-level page table.
//  The three levels have similar but slightly different structures:
//    - pagetable0_t: the bottom/leaf level (covers the contiguous addresses)
//    - pagetable1_t: the middle level
//    - pagetable2_t: the top/leaf level (covers the entire virtual address space)
//  Corresponding to these similar structures is a large amount of repetitive
//  code that is nearly the same but not identical. It could be made less
//  repetitive with C macros, but only at the cost of debuggability. The specialized
//  structure of this representation allows us to partially unroll and optimize
//  various conditions at each level.

//  The following constants define the branching factors at each level.
//  The constants and GC_PAGE_LG2 must therefore sum to sizeof(void*).
//  They should all be multiples of 32 (sizeof(uint32_t)) except that REGION2_PG_COUNT may also be 1.
#ifdef _P64
#define REGION0_PG_COUNT (1 << 16)
#define REGION1_PG_COUNT (1 << 16)
#define REGION2_PG_COUNT (1 << 18)
#define REGION0_INDEX(p) (((uintptr_t)(p) >> 14) & 0xFFFF) // shift by GC_PAGE_LG2
#define REGION1_INDEX(p) (((uintptr_t)(p) >> 30) & 0xFFFF)
#define REGION_INDEX(p)  (((uintptr_t)(p) >> 46) & 0x3FFFF)
#else
#define REGION0_PG_COUNT (1 << 8)
#define REGION1_PG_COUNT (1 << 10)
#define REGION2_PG_COUNT (1 << 0)
#define REGION0_INDEX(p) (((uintptr_t)(p) >> 14) & 0xFF) // shift by GC_PAGE_LG2
#define REGION1_INDEX(p) (((uintptr_t)(p) >> 22) & 0x3FF)
#define REGION_INDEX(p)  (0)
#endif


// define the representation of the levels of the page-table (0 to 2)
typedef struct {
    jl_gc_pagemeta_t *meta[REGION0_PG_COUNT];
    uint32_t allocmap[REGION0_PG_COUNT / 32];
    uint32_t freemap[REGION0_PG_COUNT / 32];
    // store a lower bound of the first free page in each region
    int lb;
    // an upper bound of the last non-free page
    int ub;
} pagetable0_t;

typedef struct {
    pagetable0_t *meta0[REGION1_PG_COUNT];
    uint32_t allocmap0[REGION1_PG_COUNT / 32];
    uint32_t freemap0[REGION1_PG_COUNT / 32];
    // store a lower bound of the first free page in each region
    int lb;
    // an upper bound of the last non-free page
    int ub;
} pagetable1_t;

typedef struct {
    pagetable1_t *meta1[REGION2_PG_COUNT];
    uint32_t allocmap1[(REGION2_PG_COUNT + 31) / 32];
    uint32_t freemap1[(REGION2_PG_COUNT + 31) / 32];
    // store a lower bound of the first free page in each region
    int lb;
    // an upper bound of the last non-free page
    int ub;
} pagetable_t;

extern pagetable_t memory_map;

static inline unsigned ffs_u32(uint32_t bitvec)
{
    return __builtin_ffs(bitvec) - 1;
}

// round an address inside a gcpage's data to its beginning
static inline char *gc_page_data(void *x)
{
    return (char*)(((uintptr_t)x >> GC_PAGE_LG2) << GC_PAGE_LG2);
}

static inline jl_gc_pagemeta_t *page_metadata(void *_data)
{
    uintptr_t data = ((uintptr_t)_data);
    unsigned i;
    i = REGION_INDEX(data);
    pagetable1_t *r1 = memory_map.meta1[i];
    if (!r1)
        return NULL;
    i = REGION1_INDEX(data);
    pagetable0_t *r0 = r1->meta0[i];
    if (!r0)
        return NULL;
    i = REGION0_INDEX(data);
    return r0->meta[i];
}

struct jl_gc_metadata_ext {
    pagetable1_t *pagetable1;
    pagetable0_t *pagetable0;
    jl_gc_pagemeta_t *meta;
    unsigned pagetable_i32, pagetable_i;
    unsigned pagetable1_i32, pagetable1_i;
    unsigned pagetable0_i32, pagetable0_i;
};

static inline struct jl_gc_metadata_ext page_metadata_ext(void *_data)
{
    uintptr_t data = (uintptr_t)_data;
    struct jl_gc_metadata_ext info;
    unsigned i;
    i = REGION_INDEX(data);
    info.pagetable_i = i % 32;
    info.pagetable_i32 = i / 32;
    info.pagetable1 = memory_map.meta1[i];
    i = REGION1_INDEX(data);
    info.pagetable1_i = i % 32;
    info.pagetable1_i32 = i / 32;
    info.pagetable0 = info.pagetable1->meta0[i];
    i = REGION0_INDEX(data);
    info.pagetable0_i = i % 32;
    info.pagetable0_i32 = i / 32;
    info.meta = info.pagetable0->meta[i];
    assert(info.meta);
    return info;
}


// gc pages
void gc_init_page(void);
jl_gc_pagemeta_t *gc_alloc_page(void);
void gc_free_page(void *p);

void *gc_perm_alloc_nolock(size_t sz, int zero, unsigned align, unsigned offset);
