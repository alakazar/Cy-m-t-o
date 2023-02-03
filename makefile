all: tri

array.o: array.c array.h
	gcc -c array.c -o array.o   

main.o: main.c array.h
	gcc -c main.c -o main.o

tri: main.o array.o
	gcc main.o array.o -o tri
