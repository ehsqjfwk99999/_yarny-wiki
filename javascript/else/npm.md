Node Package Manager (npm)
==========================

npm CLI
=======

- [npm](https://docs.npmjs.com/cli/v7/commands/npm)
    ```sh
    # npm [--version]
    ```
- [npm init](https://docs.npmjs.com/cli/v7/commands/npm-init)
    ```sh
    # npm init [-y]
    # Create package.json file.

    # Create without questionnaire.
    npm init -y
    ```
- [npm install](https://docs.npmjs.com/cli/v7/commands/npm-install) ( npm i )
    ```sh
    # npm install [-D] [-g] <package>
    # Install all package.

    # Install package in dependencies.
    npm i <package>

    # Install package in devDependencies.
    npm i -D <package>

    # Install package globally.
    npm i -g <package>
    ```
- [npm uninstall](https://docs.npmjs.com/cli/v7/commands/npm-uninstall) ( npm rm )
    ```sh
    # npm rm <package>
    # Remove a package.
    ```