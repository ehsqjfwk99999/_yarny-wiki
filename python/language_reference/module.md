Python Language Reference : Module
==================================

Module vs Package
-----------------
- Module
```python
# A single python file(.py).
```
- Package
```python
# A set of modules.
```

Import Module
-------------
```python
# Import module.
import ex_module

# Import module with alias.
import ex_module as ex_alias

# Import part of module.
from ex_module import ex_var
from ex_module import ex_function, ex_class[, ... ]

# Import everything of module.
from ex_module import *
```

Import Module from Package
--------------------------
```python
# Import module from package.
import ex_package.ex_module

# Import module from package with alias.
import ex_package.ex_module as ex_alias

# Import part of module from package.
from ex_package.ex_module import ex_var
from ex_package.ex_module import ex_function, ex_class[, ... ]

# Import everything of module from package.
from ex_package.ex_module import *
```

\_\_init__.py
-------------
- \_\_all__
```python
# __all__
# Define modules to import for 'from ex_package import *' statement.
# Used in __init__.py file.

__all__ = ['module_1', 'module_2', ...]
```