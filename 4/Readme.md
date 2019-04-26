# Demo 4

In previous tutorials, we using clang to compile.
But for swift, `swiftc` is the right tool. For detail tldr, just input `swiftc -h` in your terminal please.

With the correct flags, compiling all .swift source files is quite a straightforward operation.

``` Shell

/// Emit assembly file(s) using -S
swiftc -S main.m

/// Emit object file(s) using -c
swiftc -c main.m

// link swift library to the main object.
// tldr.

```

Actually, you can use command-line tools as below to generate executable file without options. You can check verbose info when -v option is added.

``` Shell
swiftc main.swift -v

Apple Swift version 4.2.1 (swiftlang-1000.11.42 clang-1000.11.45.1)
Target: x86_64-apple-darwin18.5.0
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift -frontend -c -primary-file main.swift -target x86_64-apple-darwin18.5.0 -enable-objc-interop -sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk -color-diagnostics -module-name main -o /var/folders/x2/n9ty7qcn37576mxgtgk96frr0000gn/T/main-d2358c.o
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ld /var/folders/x2/n9ty7qcn37576mxgtgk96frr0000gn/T/main-d2358c.o /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/clang/lib/darwin/libclang_rt.osx.a -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk -lobjc -lSystem -arch x86_64 -L /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/macosx -rpath /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/macosx -macosx_version_min 10.14.0 -no_objc_category_merging -o main
```

When you execute swiftc, default target is setup, macOS here.
You can just remove redundant paths info to see how the command-line tools are used, which swift and ld are involved.

swift is the same as swiftc, I supposed. As [swift vs. swiftc](https://owensd.io/2015/01/14/swift-vs-swiftc/) described.

``` Shell
// 1.  compiler
swift -frontend -c main.swift -module-name main -o main.o

// 2.  linker
ld main.o xxxxxxxx -o main
```