64:
	nasm -f macho64 64.asm
	ld -macosx_version_min 10.7.0 -lSystem -o 64 64.o

clean:
	rm -f *.o 64
