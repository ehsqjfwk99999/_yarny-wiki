TS Config
=========

tsconfig.json
-------------

```typescript
{
  "compilerOptions": {
    // Project Options.
    "allowJS": false,
    "checkJs": false,
    "outDir": "dist",

    // Strict Checks.
    "noImplicitAny": false,

    // Module Resolution.
    "baseUrl": "./"
  },
}
```

compilerOptions
---------------

### - Project Options

```json
/**
 * Allow JS
 * Allow JavaScript file in project.
 * Default: false
 */
"allowJS": false

/**
 * Check JS
 * Check JavaScript error when allowJS is enabled.
 * Default: false
 */
"checkJs": false

/**
 * outDir
 * If specified, .js(.js.map, etc.) files will be emitted to this directory.
 * If not specified, files will be emitted in the same directory as .ts files.
 */
"outDir": "dist"
```
### - Strict Checks

```json
/**
 * No Implicit Any
 * Make error when typescript infer any type.
 * Default: false
 */
"noImplicitAny": false
```

### - Module Resolution

```json
/**
 * baseUrl
 * Set base directory to resolve non-absolute module names.
 * With './' typescript will look for files in same directory as tsconfig.json.
 */
"baseUrl": "./"
```