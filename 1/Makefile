all: link
	./a.out

link: object
	ld main.o `xcrun --show-sdk-path`/usr/lib/libSystem.B.tbd

object:
	clang -c main.m

clean:
	rm -f a.out
	rm -f *.o
	