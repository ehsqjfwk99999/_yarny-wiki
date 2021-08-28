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

nvm
---
```sh
# nvm [--help] [--version]
```

nvm ls
------
```sh
# nvm ls
# List installed node versions.
```

nvm install
-----------
```sh
# nvm install <version>
# Download and install node <version>.

# Install the latest available node version.
nvm install node

# Install the latest node LTS version.
nvm install --lts
```

nvm use
-------
```sh
# nvm use <version>
# Start using node <version>.

# Use the latest node version.
nvm use node

# Use the latest node LTS version.
nvm use --lts
```
