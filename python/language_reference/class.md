Python Language Reference : Class
=================================

Structure
---------
```python
# Class Declaration
# If inheritance not specified, class inherits 'object' class.
class superClass:

    # Class Variable
    # Variable shared by class instances.
    # Can be approached via both class and instance.
    class_variable = 0

    # Constructor
    # Always called when an instance is created.
    # Initializes the class instance.
    def __init__(self, init_value):
        # Instance Variable
        self.instance_variable = init_value

    # Instance Method
    # Always use 'self' as the first parameter, meaning this instance.
    def instance_method(self):
        pass
    
    # Class Method
    # Use '@classmethod' decorator.
    # Always use 'cls' as the first parameter, meaning the class.
    # Can be called via both class and instance.
    @classmethod
    def class_method(cls):
        pass

    # Static Method
    # Use '@staticmethod' decorator.
    @staticmethod
    def static_method():
        pass

    # Getter Method
    # Returns value of property.
    # Used to get a value of property.
    # Can be used as 'className.variableName'.
    @property
    def some_variable(self):
        return self.some_variable
    
    # Setter Method
    # Used to update a value of property.
    # Can be used as 'className.variableName'.
    @some_variable.setter
    def some_variable(self, new_value):
        self.some_variable = new_value
```
```python
# Class Inheritance
# Put superclass in parenthesis after subclass.
class subClass(superClass):

    # Method Overiding
    # Redeclare method in superclass.
    def __init__(self, ,super_init_value, sub_init_value):
        # Call __init__ method of superclass.
        super().__init__(super_init_value):
        self.instance_variable = sub_init_value
```
