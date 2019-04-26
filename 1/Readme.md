# Demo 01

``` Shell
// Preprocessor 
clang -E main.m > preeprocess.txt

// Compiler, generate assemble
clang -S main.m

// Assembler, generate object file.
clang -c main.m

```

With clang command-line tool, we can generate object file.

Because object file is using `printf`, which is defined in C library, we need link the object file with the C library as below by ld tool.

``` Shell
ld main.o `xcrun --show-sdk-path`/usr/lib/libSystem.B.tbd

// deafult output is a.out, run a.out to see result.
./a.out
Hello World.

```
