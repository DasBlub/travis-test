objects = main.o

travis-test : $(objects)
	test -d bin || mkdir bin
	cc -o bin/travis-test $(objects)

main.o : main.cpp
	cc -c main.cpp -lstdc++

clean :
	rm -rf bin *.o

