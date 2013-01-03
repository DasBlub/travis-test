objects = main.o
LIBS =  -lstdc++

travis-test : $(objects)
	test -d bin || mkdir bin
	$(CXX) $(LIBS) -o bin/travis-test $(objects)

main.o : main.cpp
	$(CXX) -c main.cpp

clean :
	rm -rf bin *.o

