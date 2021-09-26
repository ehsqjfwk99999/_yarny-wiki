Python Standard Library : argparse
==================================

Import
------
```python
import argparse
```

argparse API
============

Classes
-------
- [argparse.ArgumentParser](https://docs.python.org/3/library/argparse.html#argparse.ArgumentParser)
    ```python
    # [CLASS] argparse.ArgumentParser(description=None)
    ```
    - [argparse.ArgumentParser.add_argument](https://docs.python.org/3/library/argparse.html#argparse.ArgumentParser.add_argument)
        ```python
        # [METHOD] ArgumentParser.add_argument(flag[,flag], *, action='store', default=None, type=str, help=?, dest=?) -> ?
        ```
    - [argparse.ArgumentParser.parse_args](https://docs.python.org/3/library/argparse.html#argparse.ArgumentParser.parse_args)
        ```python
        # [METHOD] ArgumentParser.parse_args(args=None) -> Namespace
        # Convert argument strings to Namespace object.
        # If args is None, string is taken from 'sys.argv'.
        ````