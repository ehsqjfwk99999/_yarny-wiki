Kaggle CLI
==========

Install
-------
```sh
pip install kaggle
```

Configuration
-------------
#### Linux
1. Create API token(kaggle.json) from [here](https://www.kaggle.com/grumyo99999/account?isEditing=False).
2. Put API token(kaggle.json) to `~/.kaggle/kaggle.json`.
3. Change API token authority.
    ```sh
    chmod 600 ~/.kaggle/kaggle.json
    ```
#### Colab
1. Add below code before loading the data.
    ```python
    import os
    os.environ['KAGGLE_USERNAME'] = 'kaggle username'
    os.environ['KAGGLE_KEY'] = 'kaggle key'
    ```

Commands
--------
- kaggle
    ```sh
    # kaggle [-h|--help] [-v|--version]
    ```