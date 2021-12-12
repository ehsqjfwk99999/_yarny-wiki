Python Standard Library : sys
=============================

Import
------
```python
import sys
```

sys API
=======

Variables
---------
- [sys.argv](https://docs.python.org/3/library/sys.html#sys.argv)
    ```python
    ## [VARIABLE] sys.argv
    # List of command line arguments passed to python script.
    # All arguments are string.
    # argv[0] is script name.

    script_name = sys.agrv[0]
    host        = sys.agrv[1]
    port        = int(sys.agrv[2])
    ```
- [sys.path](https://docs.python.org/3/library/sys.html#sys.path)
    ```python
    ## [VARIABLE] sys.path
    # List of paths when searching for modules.
    # Can add new path for importing modules.

    sys.path.append(os.path.join(os.getcwd(), 'module_dir_path'))
    ```
- [sys.stdin](https://docs.python.org/3/library/sys.html#sys.stdin)
    ```python
    ## [VARIABLE] sys.stdin
    # File object for standard input.

    # Change stdin to file object.
    sys.stdin = open('input.txt', 'r')
    ```
Functions
---------
- [sys.exit](https://docs.python.org/3/library/sys.html#sys.exit)
    ```python
    ## [FUNCTION] sys.exit([arg]) -> NoReturn
    ```