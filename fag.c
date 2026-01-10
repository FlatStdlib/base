#include <clibp.h>
#include <stdint.h>

typedef struct
{
	void *(*fnc)();
	void *arguments;
	int wait;
	int finished;
} thread;


void start_thread(void *(*fnc)(), ptr p, int wait)
{
        if(!fnc)
                return;

        long pid = __syscall__(0, 0, 0, -1, -1, -1, _SYS_FORK);

        if(pid == 0)
        {
//                __syscall__((long)app, (long)args, 0, -1, -1, -1, _SYS_EXECVE);
                p ? fnc(p) : fnc();
        } else if(pid > 0) {
				print("Thread executed: "), _printi(pid), print("\n");
				if(wait)
                	__syscall__(pid, 0, 0, -1, -1, -1, _SYS_WAIT4);
        } else {
                __syscall__(1, (long)"fork error\n", 7, -1, -1, -1, _SYS_WRITE);
        }
}

void execute(char *app, char **args)
{
        if(!app || !args)
                return;

        long pid = __syscall__(0, 0, 0, -1, -1, -1, _SYS_FORK);

        if(pid == 0)
        {
                __syscall__((long)app, (long)args, 0, -1, -1, -1, _SYS_EXECVE);
        } else if(pid > 0) {
                __syscall__(pid, 0, 0, -1, -1, -1, _SYS_WAIT4);
        } else {
                __syscall__(1, (long)"fork error\n", 7, -1, -1, -1, _SYS_WRITE);
        }
}

int FINISHED = 0;

void *thread_fn(char *dick)
{
	FINISHED = 1;
	print_args((char *[]){"Thread Arg: ", dick, 0});
	execute("/bin/bash", (char *[]){"/usr/bin/echo", "'faggots'", ">", "dickybob.c", 0});
    __syscall(1, (long)"hello from thread\n", 19, 0, 0, 0, _SYS_WRITE);
    __exit(0);
}

int main()
{
	start_thread(thread_fn, "dick", 0);

	println("Waiting");
    struct sleep_t ts = {5, 0};
    __syscall__((long)&ts, 0, 0, 0, 0, 0, _SYS_NANOSLEEP);
   	return 0;
}
