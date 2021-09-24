Python Standard Library : sys
=============================

Import
```python
import sys
```

sys API
=======

Variables
---------
- [sys.argv](https://docs.python.org/3/library/sys.html#sys.argv)
    ```python
    # sys.argv
    # List of command line arguments passed to python script.
    # argv[0] is script name.
    ```
- [sys.path](https://docs.python.org/3/library/sys.html#sys.path)
    ```python
    # sys.path
    # List of paths when searching for modules.
    # Can add new path for importing modules.

    sys.path.append(os.path.join(os.getcwd(), 'module_dir_path'))
    ```
- [sys.stdin](https://docs.python.org/3/library/sys.html#sys.stdin)
    ```python
    # sys.stdin
    # File object for standard input.

    # Change stdin to file object.
    sys.stdin = open('input.txt', 'r')
    ```
Functions
---------