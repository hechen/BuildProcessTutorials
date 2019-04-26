all: module
	swift -I. -L. main.swift -o main

module:
	swiftc -emit-library -emit-module Foo.swift -o libFoo.dylib

clean:
	rm -f *.dylib *.swiftdoc *.swiftmodule
	rm -f main