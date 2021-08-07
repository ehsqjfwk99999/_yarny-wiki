Pandas Cookbook
===============

Import
------

```python
import pandas as pd
```

Recipes
-------

### - # of rows

```python
len(df)
```

### - Select Column(s)

```python
# Get single column
df.column_1
df["column_1"]
# Get multiple columns
df[["column_1", "column_2"]]
```