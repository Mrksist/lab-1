NASM = nasm
LD = ld
FLAGS = -f elf64 -g -F dwarf

all: 1 2

debug: 1 2
	gdb ./1
	gdb ./2

1: 1.asm
	$(NASM) $(FLAGS) -o 1.o $^
	$(LD) -o $@ 1.o

2: 2.asm
	$(NASM) $(FLAGS) -o 2.o $^
	$(LD) -o $@ 2.o

run: 1 2
	./1
	./2

clean:
	rm *.o 1 2
