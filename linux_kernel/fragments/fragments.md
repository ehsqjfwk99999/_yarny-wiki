Linux Kernel Fragments
======================

keywords
--------

- __init
```c
/**
 * Meaning this function is called once during booting process.
 * Located in "linux/include/linux/init.h".
 */
```
- __noreturn
```c
/**
 * Meaning this function does not return to the caller funtion.
 */
```
- inline
```c
/**
 * Substitue the body of function where the function is called.
 */
```
- noinline
```c
/**
 * Don't make the function inline.
 */
```
- asmlinkage
```c
/**
 * Meaning this function is directly callable from assembly code.
 * Every argument is passed by stack, not register.
 */
```

Macros
------

- container_of()
```c
/**
 * Return the pointer(starting address) of an structure by address of one structure field.
 * starting_address_of_structure
 *                = container_of(address_of_structure_field, structure, structure_field)
 */

#ifndef container_of
#define container_of(ptr, type, member) \
    (type *)((char *)(ptr) - (char *) &((type *)0)->member)
#endif
```

- likely() / unlikely()
```c
/**
 * Hint to compiler for branch prediction.
 * likely() prepares for true prediction, unlikely() for false prediction.
 */

# ifndef likely
#  define likely(x) (__branch_check__(x, 1, __builtin_constant_p(x)))
# endif
# ifndef unlikely
#  define unlikely(x)   (__branch_check__(x, 0, __builtin_constant_p(x)))
# endif
```

Functions
---------

- __builtin_return_address()
```c
/**
 * Return the address of caller function.
 * TBD.
 */

// Examples.
long unsigned int caller_func_address = (long unsigned int)__builtin_return_address(0);
```

- barrier()
```c
/**
 * Memory barrier that disallow optimization(execution reordering).
 */

static inline void barrier(void)
{
    asm volatile("" : : : "memory");
}
```