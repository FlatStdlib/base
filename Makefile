###
#
# 		clib+ Installer
#
###
.PHONY: all

# Default Installer
all: setup compile cloader move clean

#
# Delete obj file
#
clean:
	rm -rf *.o
	rm gcc_clibp

setup:
	mkdir -p build

#
# Set header files in /usr/local/include/
# Set library binary in /usr/lib
# Set compiler-linker in /bin/
# Set executable perms
#
move:
	cp -r headers/* /usr/local/include
	cp build/libclibp.a /usr/lib
	cp gcc_clibp /bin/gclibp
	chmod +x /bin/gclibp

# Count Source Code Lines
count:
	wc -l \
	tests/*.c \
	src/c/*.c \
	src/c/libs/*.c \
	src/c/stdlib/*.c \
	headers/*.h \
	src/asm/*.asm

#
# Compile ASM libs
#
compile_asm:
	nasm -f elf32 src/asm/x86.asm -o build/x86.o
	nasm -f elf64 src/asm/x86_64.asm -o build/x86_64.o

#
# Compile clib+
# Merge clib+ built-in lib for the compiler and another for external use with other compilers
#
compile:
	gcc -c src/c/*.c \
	src/c/stdlib/*.c \
	src/c/libs/*.c \
	-nostdlib -nostdinc
	rm -rf build/libclibp.a
	rm -rf build/clibp.o
	ar rcs build/libclibp.a *.o
	ar rcs build/clibp.o *.o
	rm -rf *.o

#
# Compile linker and loader for clib+
# clean-up
#
cloader:
	gcc -c linker/gcc_clibp.c -o gcc_clibp.o -nostdlib
	gcc -c linker/loader.c -o build/loader.o -nostdlib -ffunction-sections -Wl,--gc-sections
	ld -o gcc_clibp gcc_clibp.o build/clibp.o
	rm gcc_clibp.o

#
# Test all test files in 'tests/'
#
test_run:
	gclibp tests/heap.c -o heap && ./heap
	gclibp tests/file.c -o file && ./file
	gclibp tests/thread.c -o thread && ./thread
#	gclibp tests/tcp_socket.c -o tcp && ./tcp
