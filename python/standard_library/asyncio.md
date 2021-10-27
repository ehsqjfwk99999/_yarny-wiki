Python Standard Library : asyncio
==================================

Import
------
```python
import asyncio
```

asyncio API
===========

Event Loop
----------
- [asyncio.get_event_loop](https://docs.python.org/3/library/asyncio-eventloop.html#asyncio.get_event_loop)
    ```python
    ## [FUNCTION] asyncio.get_event_loop() -> ?
    ```
- [loop.close](https://docs.python.org/3/library/asyncio-eventloop.html#asyncio.loop.close)
    ```python
    ## [METHOD] loop.close() -> ?
    ```
- [loop.run_in_executor]()
    ```python
    ## [METHOD] loop.run_in_executor(executor, func, *args) -> ?
    # If executor is None, default executor is used.
    ```
- [loop.run_until_complete](https://docs.python.org/3/library/asyncio-eventloop.html#asyncio.loop.run_until_complete)
    ```python
    ## [METHOD] loop.run_until_complete(future) -> ?
    ```

Coroutines and Tasks
--------------------
- [asyncio.gather](https://docs.python.org/3/library/asyncio-task.html#asyncio.gather)
    ```python
    ## [FUNCTION] asyncio.gather(*aws) -> ?
    ```
- [asyncio.sleep](https://docs.python.org/3/library/asyncio-task.html#asyncio.sleep)
    ```python
    ## [FUNCTION] asyncio.sleep(delay) -> ?
    ```
- [asyncio.ensure_future]()
    ```python
    ## [FUNCTION] asyncio.ensure_future(obj) -> ?
    ```