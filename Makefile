objects = main.o

travis-test : $(objects)
	test -d bin || mkdir bin
	cc -o bin/travis-test -lstdc++ $(objects)

main.o : main.cpp
	cc -c main.cpp

clean :
	rm -rf bin *.o

