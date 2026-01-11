#include <clibp.h>

int entry()
{
	__CLIBP_DEBUG__ = 1;
	uninit_mem();
	set_heap_sz(4096 * 20);
	init_mem();
	_printi(_HEAP_PAGE_), print("\n");
	fd_t file = open_file("a.out", O_RDONLY, 0);
	int n = file_content_size(file);
	if(n == 0)
	{
		println("Error reading file size...!\n");
		return 1;
	}
	_printi(n), print("\n");
	string content = allocate(0, 4096 * 10);
	file_read(file, content, n);

	if(content[0] == 0x7f && content[1] == 'E' && content[2] == 'L' && content[3] == 'F')
	{
		println("Confirmed binary file");
	}

	//0x5b5b5e8cf149
	println("Iterating...");
	int count = 0;
	for(int i = 0; i < n; i++)
	{
		if(content[i] == 0x90)
		{
			_printi(i), print(": "), println("NOP FOUND");
			count++;
		}
	}

	print("Found: "), _printi(count), println(" nop(s)");
	file_close(file);
	return 0;
}
