Node Package Manager (npm)
==========================

npm CLI
=======

- [npm](https://docs.npmjs.com/cli/v7/commands/npm)
    ```sh
    ## npm [--version]
    ```
- [npm init](https://docs.npmjs.com/cli/v7/commands/npm-init)
    ```sh
    ## npm init [-y]
    # Create package.json file.

    # Create package.json file with questionnaire.
    npm init

    # Create without questionnaire.
    npm init -y
    ```
- [npm install](https://docs.npmjs.com/cli/v7/commands/npm-install) ( npm i )
    ```sh
    ## npm install [-D] [-g] <package>
    ## npm i [-D] [-g] <package>
    # Install packages.

    # Install all packages in dependency list.
    npm i

    # Install <package> and add to dependencies list.
    npm i <package>

    # Install <packages> and add to devDependencies list.
    npm i -D <package>

    # Install <package> globally.
    npm i -g <package>
    ```
- [npm ls](https://docs.npmjs.com/cli/v8/commands/npm-ls)
    ```sh
    ## npm ls [-g] [--depth]
    # List installed packages.

    # List all packages in current directory.
    npm ls

    # List all global installed packages.
    npm ls -g

    # List all packages in recursive <depth>.
    npm ls --depth=<depth>
    ```
- [npm uninstall](https://docs.npmjs.com/cli/v7/commands/npm-uninstall) ( npm rm )
    ```sh
    ## npm uninstall <package>
    ## npm rm <package>
    # Remove packages.

    # Remove <package>.
    npm rm <package>
    ```