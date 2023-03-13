#include <iostream>
#include <unordered_map>

#define _GUN_SOURCE
#include <link.h>


#include <stdlib.h>
#include <stdio.h>

static int
callback1(struct dl_phdr_info *info, size_t size, void *data)
{
    const char *type;
    int p_type, j;

    printf("Name: \"%s\" (%d segments)\n", info->dlpi_name,
               info->dlpi_phnum);

    for (j = 0; j < info->dlpi_phnum; j++) {
        p_type = info->dlpi_phdr[j].p_type;
        type =  (p_type == PT_LOAD) ? "PT_LOAD" :
                (p_type == PT_DYNAMIC) ? "PT_DYNAMIC" :
                (p_type == PT_INTERP) ? "PT_INTERP" :
                (p_type == PT_NOTE) ? "PT_NOTE" :
                (p_type == PT_INTERP) ? "PT_INTERP" :
                (p_type == PT_PHDR) ? "PT_PHDR" :
                (p_type == PT_TLS) ? "PT_TLS" :
                (p_type == PT_GNU_EH_FRAME) ? "PT_GNU_EH_FRAME" :
                (p_type == PT_GNU_STACK) ? "PT_GNU_STACK" :
                (p_type == PT_GNU_RELRO) ? "PT_GNU_RELRO" : NULL;

        printf("    %2d: [%14p; memsz:%7lx] flags: 0x%x; ", j,
                (void *) (info->dlpi_addr + info->dlpi_phdr[j].p_vaddr),
                info->dlpi_phdr[j].p_memsz,
                info->dlpi_phdr[j].p_flags);
        if (type != NULL)
            printf("%s\n", type);
        else
            printf("[other (0x%x)]\n", p_type);
    }

    return 0;
}


int main() {
    dl_iterate_phdr(callback1, nullptr);
    return 0;
}


// int a[20];

// static int callback(struct dl_phdr_info* info, size_t size, void *data) {

//     // 保存之前的格式化标志
//     std::ios::fmtflags flag(std::cout.flags());

//     std::cout << "base address of object: " << std::hex << (unsigned long)info->dlpi_addr << std::endl ;
//     std::cout << "name of object: " << info->dlpi_name << std::endl;
//     for (size_t header_index = 0; header_index < info->dlpi_phnum; ++header_index) {
//         const auto &phdr = info->dlpi_phdr[header_index];

//         // if (phdr.p_type == PT_LOAD && (phdr.p_flags & PF_X))
//         {
//             // std::cout << "==============================================" << std::endl;
//             // std::cout << "program section:" << std::endl;
//             // std::cout << "location: " << info->dlpi_addr + phdr.p_vaddr << std::endl;
//             // std::cout << "filesz: " << phdr.p_filesz << std::endl;
//             // std::cout << "vaddr: " << phdr.p_vaddr << std::endl;
//             // std::cout << "paddr: " << phdr.p_paddr << std::endl;
//             // std::cout << "flags: " << phdr.p_flags << std::endl;
//             // std::cout << "memsz: " << phdr.p_memsz << std::endl;
//             // std::cout << "offset: " << phdr.p_offset << std::endl;
//             // std::cout << "type: " << phdr.p_type << std::endl;

//         }
//     }

//     // 恢复格式化标志
//     std::cout.flags(flag);

//     // The dl_iterate_phdr() function walks through the list of an application's shared objects and calls the function callback once for each object,
//     // until either all shared objects have been processed or callback returns a nonzero value.
//     return 0;
// }

// int main() {
//     std::cout << "hello world" << std::endl;
//     int hash = 0;
//     // dl_iterate_phdr(callback, &hash);
//     dl_iterate_phdr(callback1, &hash);

//     std::cout << "hash: " << hash << std::endl;
//     return 0;
// }
