Classnames Cookbook
===================

Install
-------
```sh
npm install classnames
```

Import
------
```js
const classNames = require('classnames');
```

Classnames API
==============

- classNames
    ```js
    // [?] classNames(?) -> string
    // 'classNames' function takes any number of arguments(string or object).
    // If value of key is false, key won't be included in the output string.

    // String alone is short for true.
    classNames('foo', 'bar'); // => 'foo bar'
    classNames('foo', { bar: true }); // => 'foo bar'

    // Falsy values are ignored.
    classNames(null, false, 'bar', undefined, 0, 1, { baz: null }, ''); // => 'bar 1'

    // Arrays will be recursively flattened.
    const arr = ['b', { c: true, d: false }];
    classNames('a', arr); // => 'a b c'
    ```
