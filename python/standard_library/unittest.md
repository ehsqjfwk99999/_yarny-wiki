Python Standard Library : unittest
==================================

Import
------
```python
import unittest
```

Structure
---------
```python
import unittest

# Tests need to be inside class that inherits 'unittest.TestCase' class.
class UnitTests(unittest.TestCase):

    # Method for preparing tests.
    # Called before test methods.
    def setUp():
        ...

    # Method for cleaning up tests.
    # Called after test methods.
    def tearDown():
        ...
    
    # Test methods must start with 'test_'.
    def test_unittest_1(self):
        result = some_function()
        # Check result with assert methods.
        self.assertEqual(result, 100)


if __name__ == '__main__':
    # Execute unittest.
    unittest.main()
```

unittest API
============

Class
-----
- [unittest.TestCase](https://docs.python.org/3/library/unittest.html#unittest.TestCase)

Methods
-------
- [unittest.TestCase.setUp](https://docs.python.org/3/library/unittest.html#unittest.TestCase.setUp)
- [unittest.TestCase.tearDown](https://docs.python.org/3/library/unittest.html#unittest.TestCase.tearDown)

Assert Methods
--------------
- [unittest.TestCase.assertEqual](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertEqual)
- [unittest.TestCase.assertNotEqual](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertNotEqual)
- [unittest.TestCase.assertTrue](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertTrue)
- [unittest.TestCase.assertFalse](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertFalse)