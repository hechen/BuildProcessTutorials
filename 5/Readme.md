# Demo 5


In this demo, we define a module named Foo, which is imported in main.o using Module.

``` Shell
// generate swift module for later import.
// 
swiftc -emit-module Foo.swift

// link main.swift with Foo.

```


If you build with Xcode, check build log for detail. Compile, compile, link.🤦‍♂️

![How Xcode handle the process](https://ws2.sinaimg.cn/large/006tNc79ly1g2gna0lsg8j316m094jsx.jpg)
