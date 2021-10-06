Python Standard Library : re
============================

Import
------
```python
import re
```

Special Characters
------------------
| Special Characters | Description |
|:------------------:|:------------|
| `.` | Any character except newline. |
| `^` | Starts with. |
| `$` | Ends with. |
| `*` | 0 or more repetitions. |
| `+` | 1 or more repetitions. |
| `?` | 0 or 1 repetition. |

re API
======

Constants
---------
- [re.I](https://docs.python.org/3/library/re.html#re.I)
    ```python
    ## [CONSTANT] re.I
    ## [CONSTANT] re.IGNORECASE
    ```

Functions
---------
- [re.compile](https://docs.python.org/3/library/re.html#re.compile)
    ```python
    ## [FUNCTION] re.compile(pattern, flags=0) -> Pattern
    # Compile regular expression pattern into Pattern object.
    ```
- [re.match](https://docs.python.org/3/library/re.html#re.match)
     ```python
    ## [FUNCTION] re.match(pattern, string, flags=0) -> Match | None
    # Find pattern from beginning of string.
    ```
- [re.search](https://docs.python.org/3/library/re.html#re.search)
     ```python
    ## [FUNCTION] re.search(pattern, string, flags=0) -> Match | None
    # Find first pattern in string.
    ```
- [re.sub](https://docs.python.org/3/library/re.html#re.sub)
    ```python
    ## [FUNCTION] re.sub(pattern, repl, string, count=0, flags=0) -> ?
    # Find pattern in string and replace it with repl.
    ```
