#include <stdio.h>
#include <stddef.h>
#include <stdio.h>

#define SYSCALL_REGISTER_x86 "eax"
#define EXECUTE_SYSCALL_x86 "int $0x80"

#define SYSCALL_REGISTER_x86_64 "rax"
#define EXECUTE_SYSCALL_x86_64 "syscall"


#if defined(__x86__)
        #define SYSCALL_REGISTER SYSCALL_REGISTER_x86
        #define EXECUTE_SYSCALL EXECUTE_SYSCALL_x86
#elif defined(__x86_64__)
        #define SYSCALL_REGISTER SYSCALL_REGISTER_x86
        #define EXECUTE_SYSCALL EXECUTE_SYSCALL_x86_64
#endif

long __test(long arg1, long arg2, long arg3, long arg4, long arg5, long arg6, long sys)
{
        register long ss asm(SYSCALL_REGISTER) = sys;
        asm(EXECUTE_SYSCALL);
}

int main()
{
        __test(1, (long)"gay\n", 4, 0, 0, 0, 1);
        return 0;
}

