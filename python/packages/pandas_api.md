Pandas API
==========

pandas
------

- Input/Output

    - [pandas.read_csv](https://pandas.pydata.org/docs/reference/api/pandas.read_csv.html)

- Options

    - [pandas.get_option](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.get_option.html)
    - [pandas.set_option](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.set_option.html)

- General functions

    - [pandas.isnull](https://pandas.pydata.org/docs/reference/api/pandas.isnull.html)
    - [pandas.isna](https://pandas.pydata.org/docs/reference/api/pandas.isna.html)
    - [pandas.notnull](https://pandas.pydata.org/docs/reference/api/pandas.notnull.html)
    - [pandas.notna](https://pandas.pydata.org/docs/reference/api/pandas.notna.html)
    - [pandas.concat](https://pandas.pydata.org/docs/reference/api/pandas.concat.html)
    - [pandas.crosstab](https://pandas.pydata.org/docs/reference/api/pandas.crosstab.html)
    - [pandas.qcut](https://pandas.pydata.org/docs/reference/api/pandas.qcut.html)
    - [pandas.concat](https://pandas.pydata.org/docs/reference/api/pandas.concat.html)
    - [pandas.merge](https://pandas.pydata.org/docs/reference/api/pandas.merge.html)

pandas.DataFrame
----------------

- [pandas.DataFrame](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.html)

- Properties

    - [DataFrame.size](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.size.html)
    - [DataFrame.dtypes](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.dtypes.html)
    - [DataFrame.values](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.values.html)

- Methods

    - [DataFrame.info](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.info.html)
    - [DataFrame.describe](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.describe.html)
    - [DataFrame.loc](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.loc.html)
    ```python
    # Get a single row from index.
    row = df.loc[0]
    # Get rows from index.
    row = df.loc[[0, 1, 2]]
    row = df.loc[0:3]
    row = df.loc[df['column_1'] > 10]
    # Get row and column data from index.
    row_and_column_data = df.loc[0, 1]
    row_and_column_data = df.loc[[0, 1, 2], [1, 2, 3]]
    row_and_column_data = df.loc[0:3, 1:4]
    row_and_column_data = df.loc[df['column_1'] > 10, 1:4]
    ```
    - [DataFrame.iloc](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.iloc.html)
    ```python
    # Get a single row from integer position.
    row = df.iloc[0]
    # Get rows from integer position.
    row = df.iloc[[0, 1, 2]]
    row = df.iloc[0:3]
    # Get row and column data from integer position.
    row_and_column_data = df.iloc[0, 1]
    row_and_column_data = df.iloc[[0, 1, 2], [1, 2, 3]]
    row_and_column_data = df.iloc[0:3, 1:4]
    ```
    - [DataFrame.head](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.head.html)
    - [DataFrame.tail](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.tail.html)
    - [DataFrame.filter](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.filter.html)
    - [DataFrame.sample](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.sample.html)
    ```python
    # Get random sample by number.
    df.sample(3)
    df.sample(n=3)
    # Get random sample by fraction.
    df.sample(frac=0.3)
    ```
    - [DataFrame.nlargest](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.nlargest.html)
    ```python
    # Get largest n rows ordered by column.
    df.nlargest(3, 'column')
    # Get largest n rows ordered by columns.
    df.nlargest(3, ['column_1', 'column_2'])
    ```
    - [DataFrame.nsmallest](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.nsmallest.html)
    ```python
    # Get smallest n rows ordered by column.
    df.nsmallest(3, 'column')
    # Get smallest n rows ordered by columns.
    df.nsmallest(3, ['column_1', 'column_2'])
    ```
    - [DataFrame.isin](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.isin.html)
    - [DataFrame.isnull](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.isnull.html)
    - [DataFrame.isna](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.isna.html)
    - [DataFrame.notnull](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.notnull.html)
    - [DataFrame.notna](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.notna.html)
    - [DataFrame.any](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.any.html)
    - [DataFrame.all](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.all.html)
    - [DataFrame.replace](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.replace.html)
    - [DataFrame.fillna](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.fillna.html)
    - [DataFrame.drop](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.drop.html)
    - [DataFrame.drop_duplicates](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.drop_duplicates.html)
    ```python
    # Drop duplicate inplace.
    df.drop_duplicates(inplace=True)
    ```
    - [DataFrame.dropna](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.dropna.html)
    ```python
    # Drop if all values are NA.
    df.dropna(how='all')
    ```
    - [DataFrame.value_counts](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.value_counts.html)
    ```python
    # Get unique row count.
    value_counts = df.value_counts()

    # Get proportions.
    value_counts = df.value_counts(normalize=True)
    ```
    - [DataFrame.nunique](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.nunique.html)
    - [DataFrame.sum](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.sum.html)
    - [DataFrame.count](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.count.html)
    - [DataFrame.max](https://pandas.pydata.org/docs/reference/api/pandas.Series.max.html)
    - [DataFrame.min](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.min.html)
    - [DataFrame.mean](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.mean.html)
    - [DataFrame.median](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.median.html)
    - [DataFrame.quantile](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.quantile.html)
    - [DataFrame.var](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.var.html)
    - [DataFrame.std](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.std.html)
    - [DataFrame.apply](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.apply.html)
    - [DataFrame.sort_index](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.sort_index.html)
    - [DataFrame.sort_values](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.sort_values.html)
    - [DataFrame.assign](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.assign.html)
    - [DataFrame.clip](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.clip.html)
    - [DataFrame.abs](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.abs.html)
    - [DataFrame.rename](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.rename.html)
    - [DataFrame.reset_index](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.reset_index.html)
    - [DataFrame.melt](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.melt.html)
    - [DataFrame.pivot](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.pivot.html)
    - [DataFrame.groupby](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.groupby.html)
    - [DataFrame.shift](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.shift.html)
    - [DataFrame.rank](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.rank.html)
    - [DataFrame.cummax](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.cummax.html)
    - [DataFrame.cummin](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.cummin.html)
    - [DataFrame.cumsum](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.cumsum.html)
    - [DataFrame.cumprod](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.cumprod.html)
    - [DataFrame.rolling](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.rolling.html)
    - [DataFrame.expanding](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.expanding.html)
    - [DataFrame.to_csv](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.to_csv.html)

pandas.Series
-------------

- [pandas.Series](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.html)

- Methods

    - [Series.describe](https://pandas.pydata.org/docs/reference/api/pandas.Series.describe.html)
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
    - [Series.value_counts](https://pandas.pydata.org/docs/reference/api/pandas.Series.value_counts.html)
    - [Series.nunique](https://pandas.pydata.org/docs/reference/api/pandas.Series.nunique.html)
    - [Series.sum](https://pandas.pydata.org/docs/reference/api/pandas.Series.sum.html)
    - [Series.count](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.count.html)
    - [Series.min](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.min.html)
    - [Series.max](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.max.html)
    - [Series.mean](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.mean.html)
    - [Series.median](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.median.html)
    - [Series.quantile](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.quantile.html)
    - [Series.var](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.var.html)
    - [Series.std](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.std.html)
    - [Series.apply](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.apply.html)
    - [Series.map](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.map.html)

pandas.MultiIndex
-----------------

- [pandas.MultiIndex](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.MultiIndex.html)

- Methods
    - [pandas.MultiIndex.from_tuples](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.MultiIndex.from_tuples.html)