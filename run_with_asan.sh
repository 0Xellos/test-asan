#!/bin/bash

echo -e "leak:libjvm\nleak:libjli\nleak:libz\nleak:liblcms\nleak:liblcms2\nleak:libjavalcms\nleak:libawt\n" >> lsan.supp
export LD_PRELOAD="/usr/lib/llvm-17/lib/clang/17/lib/linux/libclang_rt.asan-x86_64.so"
export ASAN_OPTIONS="handle_segv=0"
export LSAN_OPTIONS="suppressions="$(pwd)"/lsan.supp:print_suppressions=0"

$@

unset LD_PRELOAD
unset ASAN_OPTIONS
unset LSAN_OPTIONS
rm lsan.supp
