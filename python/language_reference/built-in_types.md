Python Built-in Types
=====================

[List](https://docs.python.org/3/library/stdtypes.html#lists)
------
- [list](https://docs.python.org/3/library/stdtypes.html#list)
- [list.reverse](https://docs.python.org/3/library/stdtypes.html#mutable-sequence-types)
    ```python
    # [METHOD] list.reverse() -> None
    ```

[String](https://docs.python.org/3/library/stdtypes.html#text-sequence-type-str)
--------
- [str](https://docs.python.org/3/library/stdtypes.html#str)
- [str.endswith](https://docs.python.org/3/library/stdtypes.html#str.endswith)
    ```python
    # [METHOD] str.endswith(suffix) -> bool
    ```
- [str.replace](https://docs.python.org/3/library/stdtypes.html#str.replace)
    ```python
    # [METHOD] str.replace(old, new[, count]) -> str
    ```

[Dictonary](https://docs.python.org/3/library/stdtypes.html#mapping-types-dict)
-----------
- [dict](https://docs.python.org/3/library/stdtypes.html#dict)
- len(dict)
    ```python
    # [OPERATION] len(dict) -> int
    ```
- key in dict
    ```python
    # [OPERATION] key in dict -> bool
    ```
- key not in dict
    ```python
    # [OPERATION] key not in dict -> bool
    ```
- iter(dict) ( = iter(dict.keys()) )  
    ```python
    # [OPERATION] iter(dict) -> Iterator
    ```
- [dict.clear](https://docs.python.org/3/library/stdtypes.html#dict.clear)
    ```python
    # [METHOD] d.clear() -> None
    ```
- [dict.keys](https://docs.python.org/3/library/stdtypes.html#dict.keys)
    ```python
    # [METHOD] dict.keys() -> ?
    ```
- [dict.values](https://docs.python.org/3/library/stdtypes.html#dict.values)
    ```python
    # [METHOD] dict.values() -> ?
    ```
- [dict.items](https://docs.python.org/3/library/stdtypes.html#dict.items)
    ```python
    # [METHOD] dict.items() -> ?
    ```
- [dict.setdefault](https://docs.python.org/3/library/stdtypes.html#dict.setdefault)
    ```python
    # [METHOD] dict.setdefault(key[, default]) -> Any
    ```

[Iterator Types](https://docs.python.org/3/library/stdtypes.html#iterator-types)
----------------
- [iterator.__iter__](https://docs.python.org/3/library/stdtypes.html#iterator.__iter__)
    ```python
    # [METHOD] iterator.__iter__() -> Iterator
    ```
- [iterator.__next__](https://docs.python.org/3/library/stdtypes.html#iterator.__next__)
    ```python
    # [METHOD] iterator.__next__() -> Any
    ```