Pandas
======

Import
------

```python
import pandas as pd
```

API
---

### - pandas

- [pandas.read_csv](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.read_csv.html)
- [pandas.isnull](https://pandas.pydata.org/docs/reference/api/pandas.isnull.html)
- [pandas.isna](https://pandas.pydata.org/docs/reference/api/pandas.isna.html)
- [pandas.notnull](https://pandas.pydata.org/docs/reference/api/pandas.notnull.html)
- [pandas.notna](https://pandas.pydata.org/docs/reference/api/pandas.notna.html)
- [pandas.concat](https://pandas.pydata.org/docs/reference/api/pandas.concat.html)

### - pandas.DataFrame

- [pandas.DataFrame](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.html)
- [DataFrame.loc](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.loc.html)
- [DataFrame.iloc](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.iloc.html)
- [DataFrame.head](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.head.html)
- [DataFrame.tail](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.tail.html)
- [DataFrame.sample](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.sample.html)
- [DataFrame.nlargest](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.nlargest.html)
- [DataFrame.nsmallest](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.nsmallest.html)
- [DataFrame.isin](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.isin.html)
- [DataFrame.isnull](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.isnull.html)
- [DataFrame.isna](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.isna.html)
- [DataFrame.notnull](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.notnull.html)
- [DataFrame.notna](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.notna.html)
- [DataFrame.any](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.any.html)
- [DataFrame.all](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.all.html)
- [DataFrame.replace](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.replace.html)
- [DataFrame.fillna](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.fillna.html)
- [DataFrame.drop_duplicates](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.drop_duplicates.html)
- [DataFrame.sum](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.sum.html)

### - pandas.Series

- [pandas.Series](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.html)
- [Series.head](https://pandas.pydata.org/docs/reference/api/pandas.Series.head.html)
- [Series.tail](https://pandas.pydata.org/docs/reference/api/pandas.Series.tail.html)
- [Series.sample](https://pandas.pydata.org/docs/reference/api/pandas.Series.sample.html)
- [Series.nlargest](https://pandas.pydata.org/docs/reference/api/pandas.Series.nlargest.html)
- [Series.nsmallest](https://pandas.pydata.org/docs/reference/api/pandas.Series.nsmallest.html)
- [Series.isin](https://pandas.pydata.org/docs/reference/api/pandas.Series.isin.html)
- [Series.isnull](https://pandas.pydata.org/docs/reference/api/pandas.Series.isnull.html)
- [Series.isna](https://pandas.pydata.org/docs/reference/api/pandas.Series.isna.html)
- [Series.notnull](https://pandas.pydata.org/docs/reference/api/pandas.Series.notnull.html)
- [Series.notna](https://pandas.pydata.org/docs/reference/api/pandas.Series.notna.html)
- [Series.any](https://pandas.pydata.org/docs/reference/api/pandas.Series.any.html)
- [Series.all](https://pandas.pydata.org/docs/reference/api/pandas.Series.all.html)
- [Series.sum](https://pandas.pydata.org/docs/reference/api/pandas.Series.sum.html)

### - pandas.MultiIndex

- [pandas.MultiIndex.from_tuples](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.MultiIndex.from_tuples.html)

Cookbook
--------

### - Select Items

```python
# Get single column
df["column_1"]
# Get multiple columns
df[["column_1", "column_2"]]
```