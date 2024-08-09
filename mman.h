#ifndef SYS_MMAN_H
#define SYS_MMAN_H

#include <stdlib.h>

#define PROT_READ  0x1
#define PROT_WRITE 0x2
#define MAP_SHARED 0x01
#define MAP_PRIVATE 0x02
#define MAP_ANON 0x20
#define MAP_FAILED ((void*)-1)

static void* mmap(void* addr, size_t length, int prot, int flags, int fd, int offset) {
    return malloc(length);
}

static int munmap(void* addr, size_t length) {
    free(addr);
    return 0;
}

#endif // SYS_MMAN_H
