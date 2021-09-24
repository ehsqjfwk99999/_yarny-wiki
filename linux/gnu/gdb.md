GNU GDB Cookbook
================

GNU GDB Reference
=================

## TBD ....
- run (r)
- break (b)
    ```sh
    # Set breakpoint at function.
    break func
    ```
- quit (q)
- info (i)
    ```sh
    # Show register.
    info register

    # Show current breakpoint.
    info b

    # Show process info.
    info proc
    # Show mapped address spaces of process.
    info proc mappings
    ```
- disassemble (disas)
- print (p)
    ```sh
    # Show value of variable.
    print variable
    # Show in hex.
    p/x variable
    ```
- step (s)
- next (n)
- stepi (si)
- nexti (ni)
- x
    ```sh
    # Show content of memory
    x address
    ```