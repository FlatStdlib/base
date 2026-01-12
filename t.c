#include <clibp.h>

typedef struct
{
	u8 b1, b2, b3, b4;
} opcode;

string get_shell_code(/*sArr c0de, int start, int end */)
{
	long ret = __sys_mmap(0, _HEAP_PAGE_, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
	if(ret <= 0) clibp_panic("error, mmap failed");
	void *heap = (void *)ret;

	char output[100];
	ptr_to_str(heap, output);
	print("Heap: "), println(output);
	u8 code[] = {
    	0xf3, 0x0f, 0x1e, 0xfa,        // endbr64 (optional)
    	0x55,                          // push rbp
    	0x48, 0x89, 0xe5,              // mov rbp, rsp
	    0xb8, 0x7c, 0x00, 0x00, 0x00,  // mov eax, 124
	    0xbf, 0x03, 0x00, 0x00, 0x00,
    	0x90,                          // nop
	    0x90,                          // nop
    	0x5d,                          // pop rbp
	    0xc3                           // ret		0xc3, 0x00, 0x00, 0x00, 0x00,
	};

	mem_cpy(heap, code, sizeof(code));
	__syscall__((long)heap, _HEAP_PAGE_, PROT_READ | PROT_EXEC, 0, 0, 0, _SYS_MPROTECT);

	int (*fn)(void) = heap;
    fn();

    __syscall__((long)heap, _HEAP_PAGE_, 0, 0, 0, 0, _SYS_MUNMAP);
}

int entry(int argc, sArr argv)
{
//	get_shell_code();
//	__CLIBP_DEBUG__ = 1;
	uninit_mem();
	set_heap_sz(4096 * 20);
	init_mem();

	execute("/bin/sh", (char *[]){"/bin/sh", "dump.sh", argv[1], 0});
	fd_t file = open_file("a.out", O_RDONLY, 0);
	int n = file_content_size(file);
	if(n == 0)
	{
		println("Error reading file size...!\n");
		return 1;
	}
	print("File Length: "), _printi(n), print("\n");
	string content = allocate(0, 4096 * 10);
	file_read(file, content, n);
	print_sz(content, n);
	for(int i = 0; i < 4096; i++)
	{
		printc(content[n]);
	}

//	int line_count = 0;
//	sArr lines = split_lines(content, &line_count);
//	print("Lines: "), _printi(line_count), print("\n");

//	int found = 0;
//	for(int i = 0; i < line_count; i++)
//	{
//		__meta__ *info = __get_meta__(lines[i]);
//		if(info->length < 2)
//			continue;

//		if(lines[i][info->length - 2] == ':' && found) {
//			println("STOPPING");
//			found = 0;
//		}

		// [115] - [123]
//		if(find_string(lines[i], "<_test>:") > -1) {
//			found = 1;
//		}

		

//		if(found)
//			print("["), _printi(i), print("]: "), println(lines[i]);
//	}

	file_close(file);
	return 0;
}
