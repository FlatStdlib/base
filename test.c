#include <stdio.h>

void _test(register long a1, register long a2, register long a3, register long a4, register long a5, register long a6)
{
    (void *)a1;
}

int main()
{
    _test(0, 0, 0, 0, 0, 0);
    return 0;
}