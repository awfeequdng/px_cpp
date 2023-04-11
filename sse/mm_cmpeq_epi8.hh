#pragma once

#include <iostream>

#include <emmintrin.h>
#include <smmintrin.h>

// 参考：https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#techs=SSE_ALL&ig_expand=963,937,945,955

inline void test_mm_cmpeq_epi8() {
    std::cout << " ----------" << __FUNCTION__ << "------------" << std::endl;
    char arr1[] = "0123456789abcdef";   //每个字符占1B，一共16B=128bit
    char arr2[] = "0123456789abcded";
                 //  1111111111111000
                 //  按照相同为1，不同为0来比较。

    __m128i arr1_16B = _mm_load_si128((const __m128i *)arr1);
    __m128i arr2_16B = _mm_load_si128((const __m128i *)arr2);
    __m128i cmp_res8 = _mm_cmpeq_epi8(arr1_16B, arr2_16B);
    int mask_8 = _mm_movemask_epi8(cmp_res8);
    __m128i cmp_res16 = _mm_cmpeq_epi16(arr1_16B, arr2_16B);
    int mask_16 = _mm_movemask_epi8(cmp_res16);
    __m128i cmp_res32 = _mm_cmpeq_epi32(arr1_16B, arr2_16B);
    int mask_32 = _mm_movemask_epi8(cmp_res32);

    // CPUID Flags: SSE4.1
    // __m128i cmp_res64 = _mm_cmpeq_epi64(arr1_16B, arr2_16B);
    // int mask_64 = _mm_movemask_epi8(cmp_res64);

    std::cout << "mask_8 = " << std::hex << mask_8 << std::endl;
    std::cout << "mask_16 = " << std::hex << mask_16 << std::endl;
    std::cout << "mask_32 = " << std::hex << mask_32 << std::endl;
    // std::cout << "mask_64 = " << std::hex << mask_64 << std::endl;

     __m128i a = _mm_set_epi8(0x80, 0x00, 0x7f, 0xff, 0x00, 0x01, 0xfe, 0xff, 0x01, 0x00, 0xff, 0x7f, 0x80, 0x00, 0x7f, 0xff);
    int result = _mm_movemask_epi8(a);
    std::cout << "result: " << std::hex << result << std::endl;
}