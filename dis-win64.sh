#!/bin/sh

rm -rf build

# cmake -DCMAKE_TOOLCHAIN_FILE=win64.cmake -B build -S .
cmake -B build -S .
cmake --build build

# zip -j dist-win64 build/libpkcs11-proxy.dll build/pkcs11-daemon.exe ./libdl64/libdl.dll /usr/x86_64-w64-mingw32/lib/libwinpthread-1.dll

# # include_directories("/usr/include")
# # include_directories("/home/hassan-vm3/dev/opensslg/include")
# # include_directories("/home/hassan-vm3/dev/opensslg/include")
# # include_directories("/usr/x86_64-w64-mingw32/include")
# include_directories("/usr/local/openssl-w64/include")
# include_directories("/usr/include/x86_64-linux-gnu")
