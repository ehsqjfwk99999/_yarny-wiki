Jupyter Notebook
================

Ignore(Reset) Warnings
----------------------

- ignore warning
```python
import warnings
warnings.filterwarnings(action='ignore')
```
- reset warning
```python
import warnings
warnings.filterwarnings(action='default')
```

Show Matplotlib in Notebook
---------------------------

```python
%matplotlib inline
```