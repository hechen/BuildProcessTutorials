# Demo 5


In this demo, we define a module named Foo, which is imported in main.o using Module.

``` Shell
// generate swift module for later import.
// 
swiftc -emit-module Foo.swift

// link main.swift with Foo.

```