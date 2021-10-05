C Cookbook
==========

Print Format
------------
| Specifier | Possible Argument Type | Usage |
|:---------:|:-----------------------|:------|
| `%c` | `none` | Single character. |
| `%s` | `none` | Character string. |
| `%d` | `none`, `l`, `ll` | signed integer to decimal. |
| `%o` | `none`, `l`, `ll` | Unsigned integer to octal. |
| `%x` | `none`, `l`, `ll` | Unsigned integer to hexadecimal. |
| `%X` | `none`, `l`, `ll` | Unsigned integer to hexadecimal in capital. |
| `%u` | `none`, `l`, `ll` | Unsigned integer to decimal. |
| `%f` | `none` | Floating-point to decimal. |
| `%p` | `none` | Pointer. |

C Keywords
==========

extern
------
```c
/**
 * extern <data_type> <extern_variable>
 *
 * To use variable in other file.
 * Only denotes that variable is outside of current file.
 */

extern int extern_variable;
```

static
------
```c
/**
 * static <data_type> <static_variable>
 *
 * Variable kept until the end of program.
 * Stored in data section of memory.(not in stack)
 * Automatically initialized with 0 when not initialized.
 * Local : Only usable inside function.
 * Global : Like gloabal variable, but can't be used in other files.
 */

static int static_variable;
```

typedef
-------
```c
/**
 * typedef <data_type> <type_alias>
 *
 * Create alias for Data types.
 * Convention to add '_t' at the end of alias.
 */

typedef double distance_t;
```

C Preprocessor
==============

#define
-------
```c
/**
 * #define <replaced> <original>
 *
 * Definition of macro.
 * <replaced> is replaced by <original> by preprocessor.
 */

#define TIMES 10
```

#ifdef
------
- #ifdef ... #endif
    ```c
    #ifdef <macro> 
        ...
    #endif
    ```
- #ifdef ... #else ... #endif
    ```c
    #ifdef <macro> 
        ...
    #else
        ...
    #endif
    ```
- #ifdef ... #elif ... #else ... #endif
    ```c
    #ifdef <macro_1>
        ...
    #elif defined <macro_2>
        ...
    #else
        ...
    #endif
    ```