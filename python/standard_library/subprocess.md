Python Standard Library : subprocess
====================================

Import
------
```python
import subprocess
```

subprocess API
==============

Constants
---------
- [subprocess.PIPE](https://docs.python.org/3/library/subprocess.html#subprocess.PIPE)
    ```python
    # [CONSTANT] subprocess.PIPE
    # Special value that can be used as the stdin, stdout or stderr argument to connect subprocess and main process.
    ```

Classes
-------
- [subprocess.Popen](https://docs.python.org/3/library/subprocess.html#subprocess.Popen)
    ```python
    # [CLASS] subprocess.Popen(args, stdin=None, stdout=None, stderr=None, shell=False, text=None) -> ?
    # If shell is True, args should be string.
    ```
    - [subprocess.Popen.stdin](https://docs.python.org/3/library/subprocess.html#subprocess.Popen.stdin)
        ```python
        # [ATTRIBUTE] Popen.stdin
        ```
    - [subprocess.Popen.stdout](https://docs.python.org/3/library/subprocess.html#subprocess.Popen.stdout)
        ```python
        # [ATTRIBUTE] Popen.stdout
        ```
    - [subprocess.Popen.stderr](https://docs.python.org/3/library/subprocess.html#subprocess.Popen.stderr)
        ```python
        # [ATTRIBUTE] Popen.stderr
        ```
    - [subprocess.Popen.pid](https://docs.python.org/3/library/subprocess.html#subprocess.Popen.pid)
        ```python
        # [ATTRIBUTE] Popen.pid
        # The process ID of the child process.
        ```
    - [subprocess.Popen.poll](https://docs.python.org/3/library/subprocess.html#subprocess.Popen.poll)
        ```python
        # [MEHTOD] Popen.poll() -> int | None
        # Check if child process has terminated and return returncode of subprocess if terminated.
        # If not, retrun None.
        ```
    - [subprocess.Popen.wait](https://docs.python.org/3/library/subprocess.html#subprocess.Popen.wait)
        ```python
        # [MEHTOD] Popen.wait() -> int
        # Wait for child process to terminate and return returncode of subprocess.
        ```
    - [subprocess.Popen.communicate](https://docs.python.org/3/library/subprocess.html#subprocess.Popen.communicate)
        ```python
        # [MEHTOD] Popen.communicate() -> Tuple
        # Wait for process to terminate and return tuple of (stdout_data, stderr_data).
        ```
    

Functions
---------
- [subprocess.call](https://docs.python.org/3/library/subprocess.html#subprocess.call)
    ```python
    # [FUNCTION] subprocess.call(args, *, shell=False) -> int
    ```
- [subprocess.run](https://docs.python.org/3/library/subprocess.html#subprocess.run)
    ```python
    # [FUNCTION] subprocess.run(args, *, shell=False) -> ?
    ```
