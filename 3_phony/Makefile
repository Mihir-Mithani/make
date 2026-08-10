#By Mihir Mithani

add.o: add.cpp
	g++ -c $^

print_add.o: print_add.cpp
	g++ -c $^

print_add: print_add.o add.o
	g++ $^ -o $@
	

clean: 
	ls -la
	echo "\n"
	rm print_add *.o
	echo "\n"
	ls -la
