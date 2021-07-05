Kaggle
======

API
---

### Installation
```sh
    pip install kaggle
```

### API token
- Create API token(kaggle.json) from [here](https://www.kaggle.com/grumyo99999/account?isEditing=False).
- Linux Location.
```
    ~/.kaggle/kaggle.json
```
-  Change API token authority.
```sh
    chmod 600 ~/.kaggle/kaggle.json
```
- Using in colab.
```python
# Add to code before loading data.
import os
os.environ['KAGGLE_USERNAME'] = 'kaggle username'
os.environ['KAGGLE_KEY'] = 'kaggle key'
```

Commands
--------

### kaggle
```sh
    kaggle -v
```