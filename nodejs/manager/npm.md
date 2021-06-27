NPM Commands
============

![npm Logo](../../.logos/logo.svg)

Table of Contents
-----------------

- [npm](#npm)
- [npm init](#npm-init)
- [npm i](#npm-i)
- [npm rm](#npm-rm)

npm
---

### - Display full usage info.
```sh
npm -l
```
### - Show version.
```sh
npm --version
```

npm init
--------

### - Create package.json file.
```sh
npm init
```
### - Create package.json file without questionnaire.
```sh
npm init -y
```

npm i
-----

### - Install all packages in package.json
```sh
npm i
```
### - Install package in dependencies.
```sh
npm i $PACKAGE_NAME
```
### - Install package in devDependencies.
```sh
npm i $PACKAGE_NAME -D
```
### - Install package globally.
```sh
npm i $PACKAGE_NAME -g
```

npm rm
------

### - Remove a package.
```sh
npm rm $PACKAGE_NAME
```