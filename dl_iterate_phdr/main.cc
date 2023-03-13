#include <iostream>
#include <unordered_map>

#define _GUN_SOURCE
#include <link.h>


int a[20];

static int callback(struct dl_phdr_info* info, size_t size, void *data) {
    std::cout << "base address of object: " << std::hex << (unsigned long)info->dlpi_addr << std::endl ;
    std::cout << "name of object: " << info->dlpi_name << std::endl;
    for (size_t header_index = 0; header_index < info->dlpi_phnum; ++header_index) {
        const auto &phdr = info->dlpi_phdr[header_index];

        // if (phdr.p_type == PT_LOAD && (phdr.p_flags & PF_X))
        {
            // std::cout << "==============================================" << std::endl;
            // std::cout << "program section:" << std::endl;
            // std::cout << "location: " << info->dlpi_addr + phdr.p_vaddr << std::endl;
            // std::cout << "filesz: " << phdr.p_filesz << std::endl;
            // std::cout << "vaddr: " << phdr.p_vaddr << std::endl;
            // std::cout << "paddr: " << phdr.p_paddr << std::endl;
            // std::cout << "flags: " << phdr.p_flags << std::endl;
            // std::cout << "memsz: " << phdr.p_memsz << std::endl;
            // std::cout << "offset: " << phdr.p_offset << std::endl;
            // std::cout << "type: " << phdr.p_type << std::endl;

        }
    }
    // The dl_iterate_phdr() function walks through the list of an application's shared objects and calls the function callback once for each object,
    // until either all shared objects have been processed or callback returns a nonzero value.
    return 0;
}

int main() {
    std::cout << "hello world" << std::endl;
    int hash = 0;
    dl_iterate_phdr(callback, &hash);

    std::cout << "hash: " << hash << std::endl;
    return 0;
}
