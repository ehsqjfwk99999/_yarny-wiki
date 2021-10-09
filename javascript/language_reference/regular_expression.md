Javascript Language Reference : Regular Expression
==================================================

Create `RegExp` object
----------------------
```js
/**
 * new RegExp(pattern, [flag])
 * /pattern/
 * /pattern/flag
 *
 * Create by constructor or literal notation.
 * Use '/' for literal notation.
 */

// By constructor.
let regexp = new RegExp('ab+c');
let regexp = new RegExp(/ab+c/, 'i');

// By literal notation.
let regexp = /ab+c/;
let regexp = /ab+c/gi;
```

Flags
-----
| Flag | Function |
|:----:|:--------:|
| `g` | Find all matches. |
| `i` | Ignore case. |