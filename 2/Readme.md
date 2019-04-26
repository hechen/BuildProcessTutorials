# Demo 2

Just like Demo 1, Using clang, ld to generate object file, then execution.

This tutorial is just the same as Demo 1, only except that the `print` function is defined in another class whose name is Foo, just link the main object file with Foo.o.

``` Shell
// generate main object file
clang -c main.o

// generate Foo object file
clang -c Foo.m

// link main.o, Foo.o and C library, then Foundation framework.
ld main.o Foo.o `xcrun --show-sdk-path`/System/Library/Frameworks/Foundation.framework/Foundation `xcrun --show-sdk-path`/usr/lib/libSystem.B.tbd
```