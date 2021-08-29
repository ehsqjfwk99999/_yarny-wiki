Python Language Reference : Errors & Exceptions
===============================================

Handling Exceptions
-------------------
```python
try:
    ...
except:
    ...
except ExceptionClass:
    ...
except ExceptionClass as err:
    ...
except (ExceptionClass_1, ExceptionClass_2):
    ...
except (ExceptionClass_1, ExceptionClass_2) as err:
    ...
else:
    ...
finally:
    ...
```

Raising Exceptions
------------------
```python
raise ExceptionClass
```