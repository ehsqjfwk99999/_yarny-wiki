Javascript Language Reference : ECMAScript Modules
==================================================

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
/*
 * export
 *
 * Export variables, functions, classes, etc.
 */

// Export individually.
// Put 'export' in front of declaration.
export let someVariable = 'Some variable';
export const someConstant = 'Some constant';
export const someFunction = () => { console.log('Some function') }
export class someClass { ... }

// Export all at once.
// Use 'export' at the end of script.
export {someVariable, someFunction, someClass}

/**
 * export default
 *
 * Can be used only once per module(file).
 * Put 'export default' in front of declaration.
 */
export default let someVariable = 'Some variable';
export default const someConstant = 'Some constant';
export default const someFunction = () => { console.log('Some function') }
export default class someClass { ... }
```

import
------
```javascript
/**
 * import
 */

// Import 'export' from module.
// Import with braces.
import {someVariable, someFunction, someClass} from 'someModule.js';

// Import 'export default' from module.
// Import without braces.
import someAlias from 'someModule.js';

// Import both 'export', 'export default' from module.
import someAlias, {someVariable, someFunction, someClass} from 'someModule.js';

// Import everything from module.
import * as someAlias from 'someModule.js';
```