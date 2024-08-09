#!/bin/bash

if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    echo "// Dummy syscall-names.h for Windows" > syscall-names.h
    echo "static const char *syscall_names[] = {};" >> syscall-names.h
    echo "OS IS MSYS | CYGWIN"
else
    # Actual logic to generate syscall-names.h for Unix-like systems
    (echo "static const char *syscall_names[] = {"
    echo "#include <sys/syscall.h>" | cpp -dM | grep '^#define __NR_' | LC_ALL=C sed -r -n -e 's/^\#define[ \t]+__NR_([a-z0-9_]+)[ \t]+([0-9]+)(.*)/ [\2] = "\1",/p'
    echo "};") > syscall-names.h
fi