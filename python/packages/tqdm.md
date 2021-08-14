tqdm
====

Install
-------
```sh
pip install tqdm
```

Import
------
```python
from tqdm import tqdm
```

Examples
--------
```python
from tqdm import tqdm


for _ in tqdm(range(10**8)):
    pass

for _ in tqdm(range(10**8), desc='prefix of progressbar'):
    pass
```