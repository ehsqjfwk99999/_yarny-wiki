Node Version Manager (NVM)
==========================

Install
-------
- Follow steps [here](https://github.com/nvm-sh/nvm#installing-and-updating)
- Troubleshooting [here](https://github.com/nvm-sh/nvm#troubleshooting-on-linux)
    - If `nvm: command not found` error occur, add below line to `~/.zshrc`.
        ```sh
        export NVM_DIR="$HOME/.nvm"
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
        ````

NVM CLI
=======

- nvm
    ```sh
    ## nvm [--help] [--version]
    ```
- nvm install
    ```sh
    ## nvm install [--lts] [<version>]
    # Download and install node <version>.

    # Install the latest available node version.
    nvm install node

    # Install the latest node LTS version.
    nvm install --lts
    ```
- nvm ls
    ```sh
    ## nvm ls
    # List installed node versions.

    nvm ls
    ```
- nvm use
    ```sh
    ## nvm use [--lts] [<version>]
    # Start using node <version>.

    # Use the latest node version.
    nvm use node

    # Use the latest node LTS version.
    nvm use --lts
    ```
