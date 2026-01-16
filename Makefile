COMPILER 	= gcc
LIB			= libclibp.a # Library Filename
OBJ			= clibp.o # Object Filename
HEADER_PATH = /usr/local/include # Header Files
LIB_PATH	= /usr/lib # External Library
CLIBP_PATH  = /bin/gclibp # clib+ Executable
BUILD_DIR	= build/
FLAGS 		= -c -nostdlib -nostdinc
FILES 		= src/c/*.c \
			  src/c/stdlib/*.c \
			  src/c/libs/*.c \
###
#
# 		clib+ Installer
#
###
.PHONY: all

# Default Installer
all: setup compile cloader move clean

test:
	$(COMPILER) $(FLAGS) $(FILES)
#
# Delete obj file
#
clean:
	rm -rf *.o
	rm gclibp

setup:
	mkdir -p build

#
# Set header files in /usr/local/include/
# Set library binary in /usr/lib
# Set compiler-linker in /bin/
# Set executable perms
#
move:
	cp -r headers/* $(HEADER_PATH)
	cp build/libclibp.a $(LIB_PATH)
	cp gclibp $(CLIBP_PATH)
	chmod +x $(CLIBP_PATH)

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
	$(COMPILER) $(FLAGS) $(FILES)
	rm -rf $(BUILD)/$(LIB)
	rm -rf $(BUILD)/$(OBJ)
	ar rcs $(BUILD)/$(LIB) *.o
	ar rcs $(BUILD)/$(OBJ) *.o
	rm -rf *.o

#
# Compile linker and loader for clib+
# clean-up
#
cloader:
	gcc -c linker/gcc_clibp.c -o gclibp.o -nostdlib
	gcc -c linker/loader.c -o build/loader.o -nostdlib -ffunction-sections -Wl,--gc-sections
	ld -o gclibp gclibp.o build/clibp.o
	rm gclibp.o

#
# Test all test files in 'tests/'
#
test_run:
	gclibp tests/heap.c -o heap && ./heap
	gclibp tests/file.c -o file && ./file
	gclibp tests/thread.c -o thread && ./thread
#	gclibp tests/tcp_socket.c -o tcp && ./tcp
