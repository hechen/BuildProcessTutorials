# Demo 3

Just like previous tutorial, this demo just add an additional class Bar.

``` Shell
// generate main object file
clang -c main.o

// generate Foo object file and the Bar one.
clang -c Foo.m
clang -c Bar.m

// link main.o, Foo.o, Bar.o and C library, then Foundation framework.
ld main.o Foo.o Bar.o `xcrun --show-sdk-path`/System/Library/Frameworks/Foundation.framework/Foundation `xcrun --show-sdk-path`/usr/lib/libSystem.B.tbd

// Finally
./a.out

Hello world, Foo
Hello world, Bar
```