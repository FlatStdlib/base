#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef struct
{
	int field_count;
	int capacity;
} _struct;

typedef void *ptr;
ptr create__struct(size_t *sizes)
{
	int cap = 0, idx = 0;
	for(int i = 0; sizes[i] != 0; i++)
	{
		cap += sizes[idx++];
	}

	_struct *p = malloc(sizeof(_struct) + cap);
	p->capacity = cap + sizeof(_struct);
	p->field_count = idx;

	return (ptr)((char *)p) + sizeof(_struct);
}

#define CHAR_OFFSET sizeof(int) * 2
int main()
{
	size_t sizes[] = {
		sizeof(int) * 2,
		10,
		0
	};

	ptr *n = create__struct(sizes);

	((int *)n)[0] = 10;
	((int *)n)[1] = 22;
	for(int i = 0; i < 2; i++)
		printf("[%d]: %d\n", i, (*(int *)n * i));

	strcpy((char *)n + CHAR_OFFSET, "TEST");
	printf("%s\n", ((char *)n + CHAR_OFFSET));
	return 0;
}
