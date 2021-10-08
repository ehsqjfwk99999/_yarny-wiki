nodemon Cookbook
================

Install
-------
```sh
npm i -D nodemon
```
```sh
npm i -g nodemon
```

Config File
-----------
- `nodemon.json`
```json
{
    // Show details of restarts.
    "verbose": true,
    // Files or directories to ignore.
    "ignore": ["*.test.js", "fixtures/*"],
    // Execution script.
    "exec": "node init.js"
}
```

nodemon CLI
===========

- Running node scripts.
```sh
# nodemon [-V|--verbose] <file>
```
- Running non-node scripts.
```sh
# nodemon --exec <execting other script command>
```