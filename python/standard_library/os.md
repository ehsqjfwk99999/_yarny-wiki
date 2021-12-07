Python Standard Library : os
============================

Import
```python
import os
```

os API
======

Variables
---------
- [os.name](https://docs.python.org/3/library/os.html#os.name)
- [os.curdir](https://docs.python.org/3/library/os.html#os.curdir)
    ```python
    ## [CONSTANT] os.curdir
    # Constant string used by the operating system for current directory.
    ```
- [os.pardir](https://docs.python.org/3/library/os.html#os.pardir)
- [os.environ](https://docs.python.org/3/library/os.html#os.environ)

Functions
---------
- [os.getcwd](https://docs.python.org/3/library/os.html#os.getcwd)
    ```python
    ## [FUNCTION] os.getcwd() -> str
    # String representing the current working directory.
    ```
- [os.listdir](https://docs.python.org/3/library/os.html#os.listdir)
    ```python
    ## [FUNCTION] os.listdir() -> List
    # @param path='.'
    # Return a list of entries in the directory given by path. 
    # Excludes special entries('.', '..').
    ```
- [os.walk](https://docs.python.org/3/library/os.html#os.walk)
    ```python
    ## [FUNCTION] os.walk() -> Tuple
    # @param top - Directory to walk.
    # Excludes special entries('.', '..').
    ```