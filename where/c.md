C
=

Points
------

### typedef
```c
/**
 * Create alias for Data types.
 * Convention to add '_t' at the end of alias.
 */

typedef $DATA_TYPE $TYPE_ALIAS
```
- example
```c
typedef double distance_t;
```

### static
```c
/**
 * Variable kept until the end of program.
 * Stored in data section of memory.(not in stack)
 * Automatically initialized with 0 when not initialized.
 * Local : Only usable inside function.
 * Global : Like gloabal variable, but can't be used in other files.
 */

static $DATA_TYPE $STATIC_VARIABLE;
```
- example
```c
static int static_variable;
```

### extern
```c
/**
 * To use variable in other file.
 * Only denotes that variable is outside of current file.
 */

extern $DATA_TYPE $EXTERN_VARIABLE;
```
- example
```c
extern int extern_variable;
```

### #define
```c
/**
 * Definition of macro.
 * $NEW_VALUE is replaced by $REPLACED_VALUE by preprocessor.
 */

#define $REPLACED_VALUE $NEW_VALUE
```
- example
```c
#define TIMES 10
```

### #ifdef
- #ifdef ... #endif
```c
#ifdef $MACRO 
    printf("Something to do if defined.");
#endif
```
- #ifdef ... #else ... #endif
```c
#ifdef $MACRO 
    printf("Something to do if defined.");
#else
    printf("Something to do in else.");
#endif
```
- #ifdef ... #elif ... #else ... #endif
```c
#ifdef $MACRO_1
    printf("Something to do if defined.");
#elif defined $MACRO_2
    printf("Something to do in elif.");
#else
    printf("Something to do in else.");
#endif
```