Python Language Reference : Decorator
=====================================

Function Decorator
------------------
```python
# Decorator function.
# Return a new function including old function.
def decorator_function(old_function):

    def new_function(*args, **kwagrs):
        print('Something to do before old function')
        old_function()
        print('Something to do after old function')

    return new_function

# Using function decorator.
# Put '@decorator_functon_name' on top of function declaration.
@decorator_function
def decorated_function():
    ...
```
