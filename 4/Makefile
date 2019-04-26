all: output
	./main

output: object
	swiftc main.swift -o main

object: ass
	swiftc -c main.swift -o main.o

ass:
	swiftc -S main.swift

clean:
	rm *.o
	rm main