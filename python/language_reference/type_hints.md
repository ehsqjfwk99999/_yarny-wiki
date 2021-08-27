Python Language Reference : Type Hints
======================================

typing primitives
-----------------
#### - Built-in Types

- [None](https://docs.python.org/3/library/stdtypes.html#the-null-object)

- [int](https://docs.python.org/3/library/stdtypes.html#numeric-types-int-float-complex)
- [float](https://docs.python.org/3/library/stdtypes.html#numeric-types-int-float-complex)
- [str](https://docs.python.org/3/library/stdtypes.html#text-sequence-type-str)

#### - Special Types

- [typing.Any](https://docs.python.org/3/library/typing.html#typing.Any)
    ```python
    # typing.Any
    # Indicate that any type is possible.
    ```
- [typing.NoReturn](https://docs.python.org/3/library/typing.html#typing.NoReturn)
    ```python
    # typing.NoReturn
    # Indicate that a function never returns.

    def stop() -> NoReturn:
        raise RuntimeError
    ```
- [typing.Final](https://docs.python.org/3/library/typing.html#typing.Final)
    ```python
    # typing.Final
    # Indicate that variable cannot be re-assigned.

    MAX_SIZE: Final = 100
    ```

- [typing.List](https://docs.python.org/3/library/typing.html#typing.List)
    ```python
    # typing.List
    # List of 'type X' items.

    List[X]
    ```
- [typing.Tuple](https://docs.python.org/3/library/typing.html#typing.Tuple)
    ```python
    # typing.Tuple
    # Tuple of items.
    # Items must have same order of types.

    # Tuple of two items of 'type X' and 'type Y'.
    Tuple[X, Y]
    # Tuple of three items of 'type X', 'type Y' and 'type Z'.
    Tuple[X, Y, Z]
    # Variable-length tuple of 'type X'.
    Tuple[X, ...]
    ```
- [typing.Dict](https://docs.python.org/3/library/typing.html#typing.Dict)
    ```python
    # typing.Dict
    # Dictionary from 'type X' keys to 'type Y' values.

    Dict[X, Y]
    ```
- [typing.Callable](https://docs.python.org/3/library/typing.html#typing.Callable)
    ```python
    # typing.Callable
    # Used to indicate type of function.

    # Function with arguments of 'type X', 'type Y' and return of 'type X'.
    Callable[[X, Y], X]
    # Function with any arguments and return of 'type X'.
    Callable[..., X]
    ```
- [typing.Union](https://docs.python.org/3/library/typing.html#typing.Union)
    ```python
    # typing.Union
    # Union of possible types.
    
    Union[X, Y]
    ```
- [typing.Optional](https://docs.python.org/3/library/typing.html#typing.Optional)
    ```python
    # typing.Optional
    # Type that includes 'None' value.
    # Optional[X] == Union[X, None]

    Optional[X]
    ```
#### - Generic Types
- [typing.TypeVar](https://docs.python.org/3/library/typing.html#typing.TypeVar)
    ```python
    # typing.TypeVar
    # Used to make type variable.

    T = TypeVar('T')
    ```
- [typing.Generic](https://docs.python.org/3/library/typing.html#typing.Generic)
    ```python
    # typing.Generic
    # Abstract base class for generic types.

    class GenericClass(Generic[T, K]):
        def __init__(self, var_1: T, var_2: K):
            ...
        ...

    # To use above class.
    new_generic_class = GenericClass[int, str]()
    ```

Type Hints Cookbook
===================

Type Alias
----------
```python
# Type Alias
# Used to simplify complex type signatures.

typeAlias = dict[str, int]
```

Typing Class
------------
```python
# For typing class, just use the name of the class.

class TypeClass:
    ...

# To type above class.
new_type_class: TypeClass = TypeClass()
```