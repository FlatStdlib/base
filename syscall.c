/* Max Register for the C ABIV Calling Convension */

// MAX_REGISTER is the max of arguments the arch takes for syscalls
// for further abstraction
#if defined(__i386__)
	#define MAX_REGISTER 6
	#define SYSCALL_REG "eax"
	#define EXECUTE_SYSCALL "int $0x80"
#elif defined(__x86_64__) || defined(__amd__)
	#define MAX_REGISTER 6
	#define SYSCALL_REG "rax"
	#define EXECUTE_SYSCALL "syscall"
#elif defined(__riscv)
	#define MAX_REGISTER 8
	#define SYSCALL_REG "a7"
	#define EXECUTE_SYSCALL "ecall"
#elif defined(__aarch64__)
	#define MAX_REGISTER 8
	#define SYSCALL_REG "x8"
	#define EXECUTE_SYSCALL "svc #0"
#elif defined(__arm__)
	#define MAX_REGISTER 4
	#define SYSCALL_REG "r7"
	#define EXECUTE_SYSCALL "svc #0"
#elif defined(_WIN64)
	#define MAX_REGISTER 4
	#define SYSCALL_REG "rcx"
	#define EXECUTE_SYSCALL "syscall"
#else
	#define MAX_REGISTER 0
	#define SYSCALL_REG 0
	#define EXECUTE_SYSCALL 0
#endif

long __syscall__(long arg1, long arg2, long arg3, long arg4, long arg5, long arg6, long sys)
{
	register long ss asm(SYSCALL_REG) = sys;
    asm(EXECUTE_SYSCALL);
}

// compile with -nostdlib -nostdinc
void _start()
{
    __syscall__(1, (long)"Hello World\n", 12, 0, 0, 0, 1);
    __syscall__(0, 0, 0, 0, 0, 0, 60);
}