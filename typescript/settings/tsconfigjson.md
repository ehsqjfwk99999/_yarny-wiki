TS Config
=========

tsconfig.json
-------------

```typescript
{
  "compilerOptions": {
    // JavaScript Support.
    "allowJS": false,
    "checkJs": false,

    // Emit.
    "outDir": "dist",

    // Type Checking.
    "noImplicitAny": false,

    // Modules.
    "baseUrl": "./",

    // Language and Environment.
    "target": "ES3",
    "lib": []
  },
}
```

compilerOptions
---------------

### - JavaScript Support

- [allowJS](https://www.typescriptlang.org/tsconfig#allowJs)
```json
/**
 * allowJS
 * Allow JavaScript file in project.
 * Default: false
 */
"allowJS": false
```
- [checkJS](https://www.typescriptlang.org/tsconfig#checkJs)
```json
/**
 * checkJS
 * Check JavaScript error when allowJS is enabled.
 * Default: false
 */
"checkJs": false
```

### - Emit

- [outDir](https://www.typescriptlang.org/tsconfig#outDir)
```json
/**
 * outDir
 * If specified, .js(.js.map, etc.) files will be emitted to this directory.
 * If not specified, files will be emitted in the same directory as .ts files.
 */
"outDir": "dist"
```

### - Type Checking

- [noImplicitAny](https://www.typescriptlang.org/tsconfig#noImplicitAny)
```json
/**
 * noImplicitAny
 * Make error when typescript infer any type.
 * Default: false
 */
"noImplicitAny": false
```

### - Modules

- [baseUrl](https://www.typescriptlang.org/tsconfig#baseUrl)
```json
/**
 * baseUrl
 * Set base directory to resolve non-absolute module names.
 * With './' typescript will look for files in same directory as tsconfig.json.
 */
"baseUrl": "./"
```

### - Language and Environment

- [target](https://www.typescriptlang.org/tsconfig#target)
```json
/**
 * target
 * Configure the output javascript file features.
 * Default: ES3
 */
"target": "ES3"
```
- [lib](https://www.typescriptlang.org/tsconfig#lib)
```json
/**
 * lib
 * Includes APIs for newer JS features.
 */
"lib": [ ... ]
```