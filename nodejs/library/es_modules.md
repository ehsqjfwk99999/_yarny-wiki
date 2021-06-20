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
export class someClass { ... }
```
```javascript
// In the end of script.
// Can export variable, function, class, etc.

...

export {someVariable, someFunction, someClass}
```

import
------

```javascript
// Import things from module.
import {someVariable, someFunction, someClass} from 'someModule.js';

// Import everything from module.
import * as someAlias from 'someModule.js';
```

export default
--------------

```javascript
// Export part.
// Used only once per module.
// Can be used to anonymous class, function, etc.

export default let someVariable = 'Some variable';
export default const someConstant = 'Some constant';
export default someFunction = () => { console.log('Some function') }
export default class someClass { ... }
```
```javascript
// Import part.
// Import statement used without braces.

import someAlias from 'someModule.js';
```