NPM Commands
============

![npm Logo](../../.logos/npm.svg)

Table of Contents
-----------------

- [npm](#npm)
- [npm init](#npm-init)
- [npm i](#npm-i)
- [npm rm](#npm-rm)

npm
---

```sh
# Show version.
npm --version
```

npm init
--------

```sh
# Create package.json file.
npm init

# Create without questionnaire.
npm init -y
```

npm i
-----

```sh
# Install all packages in package.json.
npm i

# Install package in dependencies.
npm i $PACKAGE_NAME

# Install package in devDependencies.
npm i $PACKAGE_NAME -D

# Install package globally.
npm i $PACKAGE_NAME -g
```

npm rm
------

```sh
# Remove a package.
npm rm $PACKAGE_NAME
```