Kernel Debug
============

printk()
--------

```c
/**
 * Print values in kernel space.
 * Header : <linux/kernel.h>
 * Usage is same with printf().
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

dump_stack()
------------

```c
/**
 * Print call stack in kernel space.
 * Header : <linux/kernel.h>
 */

dump_stack()
```