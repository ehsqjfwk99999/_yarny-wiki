ESLint
======

Using in JavaScript
-------------------

- Install packages.

```sh
npm i -D eslint prettier eslint-plugin-prettier eslint-config-prettier babel-eslint
```

- Copy script.

```javascript
module.exports = {
  env: {
    node: true,
  },
  plugins: [],
  extends: [
    'eslint:recommended',
    'plugin:prettier/recommended',
  ],
  rules: {},
  parser: 'babel-eslint',
  ignorePatterns: ['node_modules'],
};
```

Using in TypeScript
-------------------

- Install packages for JavaScript above.

- Install packages for TypeScript.

```sh
npm i -D typescript @typescript-eslint/parser @typescript-eslint/eslint-plugin
```

- Copy script.

```javascript
module.exports = {
  env: {
    node: true,
  },
  plugins: ['@typescript-eslint'],
  extends: [
    'eslint:recommended',
    'plugin:@typescript-eslint/recommended',
    'plugin:prettier/recommended',
  ],
  rules: {},
  parser: '@typescript-eslint/parser',
  ignorePatterns: ['node_modules'],
};
```

Configuration
-------------

```javascript
module.exports = {
/**
 * Environments
 * Declare environments this script run in.
 */
  env: {},
/**
 * Plugins
 * Declare third-party plugins ESLint use.
 */
  plugins: [],
/**
 * Extends
 * Declare additional configuration to use.
 */
  extends: [],
/**
 * Rules
 * Declare which rules are enabled and at what error level.
 */
  rules: {},
/**
 * Parser
 * Declare which parser should be used.
 * Default : Espree.
 */
  parser: '',
/**
 * Ignore Patterns
 * Declare which files and directories to ignore.
 */
  ignorePatterns: [],
};
```