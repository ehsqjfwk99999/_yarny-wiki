Python Language Reference : Iterator & Generator
================================================

Iterator
--------
```python
# Iterator
# An object representing a stream of data.

# Returns items in stream when called by '__next__' method.
# If no more item is available, StopIteration exception is raised.
print(iterator_var.__next__())


```

Iterable
--------
```python
# Iterable
# An object capable of returning its members one at a time.

# Return a new iterator object when called by '__iter__' method.
# This iterator object can iterate all the items in container.
print(iterable_var.__iter__())
```

Generator
---------
```python
# Generator
# A function which returns a generator iterator using 'yield' keyword.

def generator_func():
    # Each execution stops at each 'yield' and restarts after it.
    yield 1
    yield 2
    yield 3

# Generator function creates new iterator object.
iterator_var = generator_func()
```