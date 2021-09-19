Kernel Debug Functions
======================

printk()
--------

```c
/**
 * Print string in kernel space.
 * Header : <linux/kernel.h>
 * Usage is similar with printf().
 */

printk("Something to print : %p", $POINTER);
```
- Format Specifier

| Type | Format Specifier |
| :--: | :--------------: |
| int | %d |
| unsinged int | %u |
| pointer | %p |
| pointer symbol | %pS |

trace_printk()
--------------

```c
/**
 * Print string to ftrace ring buffer.
 */

trace_printk("Something to print : %p", $POINTER);
```

dump_stack()
------------

```c
/**
 * Print call stack in kernel space.
 * Header : <linux/kernel.h>
 */

dump_stack();
```