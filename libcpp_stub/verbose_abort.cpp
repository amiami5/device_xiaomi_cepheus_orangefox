// Copyright (C) 2026 amisuke
// ROM(新しい libc++)でビルドされた vendor ライブラリが要求する
// __libcpp_verbose_abort を、12.1 recovery の libc++ に代わって提供する。
#include <stdlib.h>

extern "C" __attribute__((noreturn, visibility("default")))
void cepheus_libcpp_verbose_abort(const char*, ...)
    __asm__("_ZNSt3__122__libcpp_verbose_abortEPKcz");

extern "C" void cepheus_libcpp_verbose_abort(const char*, ...) {
    abort();
}
