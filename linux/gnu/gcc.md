GNU GCC Cookbook
================

GNU GCC Reference
=================

Keywords
--------
- \_\_attribute__
    ```c
    // [KEYWORD] __attribute__
    // Specifies special properties of variables, functions, etc.
    ```

Standard Predefined Macros
--------------------------
- \_\_FILE__
    ```c
    // [MACRO] __FILE__
    // Name of current input file in the form of C string constant.
    ```
- \_\_LINE__
    ```c
    // [MACRO] __LINE__
    // Current input line number in the form of decimal integer constant.
    ```

Built-in Functions
------------------
- \_\_builtin_return_address
    ```c
    // [FUNCTION] void* __builtin_return_address(unsigned int level)
    // Returns the return address of current function.
    ```