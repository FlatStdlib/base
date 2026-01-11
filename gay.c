#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void _test()
{
	register long v asm("rax") = 0x7C;
	register long s asm("rdi") = 0x01;
	asm("nop");
}

int main()
{
	printf("%p\n", _test);
	return 0;
}
