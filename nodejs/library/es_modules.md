ECMAScript modules
==================

Features
--------

- Always executed in strict mode(use strict).
- Module level scope.
    - Every single script is module.
    - Every single script has its own scope.
- Evaluated once when first called.

export
------

```javascript
// In front of variable, function and class declaration.

export let someVariable = 'Some variable';
export const someConstant = 'Some constant';
export someFunction = () => { console.log('Some function') }
```
```javascript
// In the end of script.

...

export {someVariable, someConstant, someFunction}
```

import
------