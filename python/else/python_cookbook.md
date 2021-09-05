Python Cookbook
===============

EOF Check
---------
```python
# EOF in python is empty sting.

if not line:
    ...

if line == '':
    ...
```

'==' vs 'is'
----------
```python
# '=='
# Compares the value.

# 'is'
# Compares the object (memory location).
```

'None' in 'If'
--------------
```python
# Use 'None' in conditional statement with 'is'.

if var is None:
    ...
    
if var is not None:
    ...
```

(Un)Packing
-----------
- Packing
    ```python
    # with single asterisk('*')
    _, *ex_var, _ = 1, 2, 3, 4, 5   # ex_var = [2, 3, 4]
    ex_func(*args)

    # with double asterisk('**')
    ex_func(**kwargs)
    ```
- Unpacking
    ```python
    # with single asterisk('*')
    ex_var = (*(1, 2, 3), 4, 5)     # ex_var = (1, 2, 3, 4, 5)
    ex_func(*[1, 2, 3])     # ex_func(1, 2, 3)

    # with double asterisk('**')
    ex_func(**{'a': 1, 'b': 2, 'c': 3})     # ex_func(a=1, b=2, c=3)
    ```

Force keyword argument in function
----------------------------------
```python
# Parameters after '*' can only be keyword arguments.
def ex_func(pos_arg, * , forced_arg):
    ...
```

Ellipsis
--------
```python
# Same meaning as 'pass'.
def ex_func():
    ...
```

'del' vs '\_\_del__()'
----------------------
```python
# del
# decrements the reference count by one.
# 'del x' doesn’t directly call 'x.__del__()'

# __del__()
# '__del__()' is only called when reference count reaches zero.
```

semicolon
---------
```python
# Semicolon can be used to delimit statements.
# It can be used to put multiple statements on same line.

python3 -c "import sys; print(sys.path)"
```

Check Package Location
----------------------
1. '\_\_path__'
    ```python
    print(numpy.__path__)
    ```
2. '\_\_file__'
    ```python
    print(os.__file__)
    ```

Writing Several Lines
---------------------
```python
# Use '\'.

n = 1 + 2 \
    + 3 + 4
```

Using 'range' Function
----------------------
```python
# Use '+1' in stop argument.

for i in range(100+1):
    ...
```

List Shallow Copy vs Deep Copy
--------------
| Copy | Expression |
|:----:|:----------:|
| Shallow Copy | `shallow_list = original_list` |
| Deep Copy | `deep_list = original_list[:]` |

Gloabl Variable
---------------
```python
# To use global variable inside function, use the keyword 'global'.
# Without 'global' keyword, new local variable is created.

g_var = 1

def func():
    global g_var
    ...
```

Local Variable
--------------
```python
# To use outer function's variable, use the keyword 'nonlocal'.

def outer_func():
    l_var = 1
    def inner_func():
        nonlocal l_var
        ...
```