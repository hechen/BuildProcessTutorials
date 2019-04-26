all: link
	./a.out

link: module
	ld main.o Foo.o \
	`xcrun --show-sdk-path`/System/Library/Frameworks/Foundation.framework/Foundation \
	`xcrun --show-sdk-path`/usr/lib/libSystem.B.tbd\n

module: 
	clang -c Foo.m
	clang -c main.m
	
clean:
	rm -f *.o
	rm -f a.out