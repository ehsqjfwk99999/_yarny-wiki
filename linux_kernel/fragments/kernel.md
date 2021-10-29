Linux Kernel Fragments
======================

Keywords
--------

- __init
```c
/**
 * __init
 * Meaning this function is called once during booting process.
 * Located in "linux/include/linux/init.h".
 */

#define __init      __section(".init.text") __cold  __latent_entropy __noinitretpoline __nocfi
```

- __noreturn
```c
/**
 * Meaning this function does not return to the caller funtion.
 * Location : linux/include/linux/compiler_attributes.h
 */

#define __noreturn                      __attribute__((__noreturn__))
```

- __sched
```c
/**
 * Meaning that scheduling is executed inside this function.
 * Location : linux/sched/debug.h
 */

#define __sched     __section(".sched.text")
```

- inline
```c
/**
 * inline
 * Substitue the body of function where the function is called.
 * Location : linux/include/linux/compiler_types.h
 */

#define inline inline __gnu_inline __inline_maybe_unused notrace
```

- __always_inline
```c
/**
 * __always_inline
 * Meaning always inline this code.
 * Location : linux/include/linux/compiler_attributes.h
 */

#define __always_inline                 inline __attribute__((__always_inline__))
```


- noinline
```c
/**
 * Don't make the function inline.
 * Location : linux/include/linux/compiler_attributes.h
 */

#define   noinline                      __attribute__((__noinline__))
```

- asmlinkage
```c
/**
 * Meaning this function is directly callable from assembly code.
 * Every argument is passed by stack, not register.
 */
```

- __must_check
```c
/**
 * Meaning that return value of this function must be checked.
 * Location : linux/include/linux/compiler_attributes.h
 */

#define __must_check                    __attribute__((__warn_unused_result__))
```

- __force
```c
/**
 * Used to suppress warning in sparse(semantic parser for C).
 * Location : linux/include/linux/compiler_types.h
 */

# define __force    __attribute__((force))
```

- __percpu
```c
/**
 * Meaning this pointer is related to percpu data.
 * Location : linux/include/linux/compiler_types.h
 */

# define __percpu   __attribute__((noderef, address_space(__percpu)))
```

- __user
```c
/**
 * __user
 * Meaning this pointer is pointing at somewhere in user space.
 * Location : linux/include/linux/compiler_types.h
 */

# define __user     __attribute__((noderef, address_space(__user)))
```

Macros
------

- container_of()
```c
/**
 * Return the pointer(starting address) of an structure by address of one structure field.
 * starting_address_of_structure
 *                = container_of(address_of_structure_field, structure, structure_field)
 * Location : linux/include/linux/kernel.h
 */

#define container_of(ptr, type, member) ({              \
    void *__mptr = (void *)(ptr);                   \
    BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) &&   \
             !__same_type(*(ptr), void),            \
             "pointer type mismatch in container_of()");    \
    ((type *)(__mptr - offsetof(type, member))); })
```

- likely() / unlikely()
```c
/**
 * Hint to compiler for branch prediction.
 * likely() prepares for true prediction, unlikely() for false prediction.
 * Location : linux/include/linux/compiler.h
 */

#  define likely(x) (__branch_check__(x, 1, __builtin_constant_p(x)))

#  define unlikely(x)   (__branch_check__(x, 0, __builtin_constant_p(x)))
```

- might_sleep()
```c
/**
 * Go to sleep when there exist higher priority task.
 * Location : linux/include/linux/kernel.h
 */

# define might_sleep() \
    do { __might_sleep(__FILE__, __LINE__, 0); might_resched(); } while (0)
```

- barrier()
```c
/**
 * Memory barrier that disallow optimization(execution reordering).
 * Location : linux/include/linux/compiler.h
 */

# define barrier() __asm__ __volatile__("": : :"memory")
```

- atomic_inc()
```c
/**
 * Increase atomic value by 1.
 * Location : linux/include/asm-generic/atomic-instrumented.h
 */

static __always_inline void
atomic_inc(atomic_t *v)
{
    instrument_atomic_read_write(v, sizeof(*v));
    arch_atomic_inc(v);
}
```

- READ_ONCE() / WRITE_ONCE()
```c
/**
 * Atomically read or write without optimization.
 * Location : linux/include/asm-generic/rwonce.h
 */

#define READ_ONCE(x)                            \
({                                  \
    compiletime_assert_rwonce_type(x);              \
    __READ_ONCE(x);                         \
})

#define WRITE_ONCE(x, val)                      \
do {                                    \
    compiletime_assert_rwonce_type(x);              \
    __WRITE_ONCE(x, val);                       \
} while (0)
```

- BUG() / BUG_ON()
```c
/**
 * Print current status and process dies if BUG() is executed or BUG_ON() assertion fails.
 * Location : linux/include/asm-generic/bug.h
 */

#define BUG() do { \
    printk("BUG: failure at %s:%d/%s()!\n", __FILE__, __LINE__, __func__); \
    barrier_before_unreachable(); \
    panic("BUG!"); \
} while (0)

#define BUG_ON(condition) do { if (unlikely(condition)) BUG(); } while (0)
```

- WARN() / WARN_ON() / WARN_ON_ONCE() / WARN_ONCE()
```c
/**
 * Print current status while remaining system running.
 * If executed logical error existed.
 * Location : linux/include/asm-generic/bug.h
 */

#define WARN(condition, format...) ({                   \
    int __ret_warn_on = !!(condition);              \
    if (unlikely(__ret_warn_on))                    \
        __WARN_printf(TAINT_WARN, format);          \
    unlikely(__ret_warn_on);                    \
})

#define WARN_ON(condition) ({                       \
    int __ret_warn_on = !!(condition);              \
    if (unlikely(__ret_warn_on))                    \
        __WARN();                       \
    unlikely(__ret_warn_on);                    \
})

#define WARN_ON_ONCE(condition) ({              \
    static bool __section(".data.once") __warned;       \
    int __ret_warn_once = !!(condition);            \
                                \
    if (unlikely(__ret_warn_once && !__warned)) {       \
        __warned = true;                \
        WARN_ON(1);                 \
    }                           \
    unlikely(__ret_warn_once);              \
})

#define WARN_ONCE(condition, format...) ({          \
    static bool __section(".data.once") __warned;       \
    int __ret_warn_once = !!(condition);            \
                                \
    if (unlikely(__ret_warn_once && !__warned)) {       \
        __warned = true;                \
        WARN(1, format);                \
    }                           \
    unlikely(__ret_warn_once);              \
})
```
