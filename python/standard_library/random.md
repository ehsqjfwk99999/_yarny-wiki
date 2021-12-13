Python Standard Library : random
================================

Arxiv
-----
- [Documentation](https://docs.python.org/3/library/random.html)

Import
------
```python
import random
```

Example
-------
```python
import random

# Return a random integer in range [1, 10].
rand_int = random.randint(1, 10)

# Return a random floating point number in range [0.0, 1.0).
rand_float = random.random()

# Return a random floating point number in range [1.0, 10.0).
rand_float = random.uniform(1, 10)

# Return a random character from string('abcde').
rand_choice = random.choice('abcde')
```