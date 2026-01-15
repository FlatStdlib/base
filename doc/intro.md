<div align="center">
    <h1>clib+ Introduction</h1>
</div>


# Hello World

```c
#include <clibp.h>

int entry()
{
    println("Hello World");
    return 0;
}
```

# Heap / String
This example is a heap-based string
```c
#include <clibp.h>

int entry()
{
    string name = allocate(0, 10);
    mem_cpy(name, "Chris", 5);

    println(name);
    return 0;
}
```

# Array
This example is a heap-based array
```c
#include <clibp.h>

int entry()
{
    
}
```

# Map
