tqdm
====

![tqdm Logo](./logo.gif)

Examples
--------
```python
    from tqdm import tqdm


    for _ in tqdm(range(10**8)):
        pass

    for _ in tqdm(range(10**8), desc='prefix of progressbar'):
        pass
```