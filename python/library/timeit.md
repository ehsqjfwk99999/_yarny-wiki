Python Standard Library : timeit
================================

Import
------
```python
import timeit
```

Class
-----
- [timeit.Timer](https://docs.python.org/3/library/timeit.html#timeit.Timer)

Functions
---------
- [timeit.timeit](https://docs.python.org/3/library/timeit.html#timeit.timeit)
    ```python
    # timeit.timeit(stmt='pass', number=1000000)

    timeit.timeit('test_func()', number=100)
    ```
- [timeit.repeat](https://docs.python.org/3/library/timeit.html#timeit.repeat)
    ```python
    # timeit.repeat(stmt='pass', repeat=5, number=1000000)

    timeit.repeat('test_func()', repeat=100)
    ```
- [timeit.default_timer](https://docs.python.org/3/library/timeit.html#timeit.default_timer)
    ```python
    # timeit.default_timer()
    ```