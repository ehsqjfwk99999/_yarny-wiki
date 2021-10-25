Zsh Cookbook
============

Zsh Installation
================

Install Zsh
-----------
1. Install Zsh & change shell.
    ```sh
    sudo apt install zsh -y && chsh -s `which zsh`
    ```
2. Check `/etc/passwd`.
    - If chsh didn't work, manually change `/bin/bash` to `$(which zsh)`.
3. Restart terminal.

Install Oh My Zsh
-----------------
1. Install from [here](https://github.com/ohmyzsh/ohmyzsh#basic-installation).
2. Restart terminal.

Install Oh My Zsh Plugins
-------------------------
1. Install Plugins.
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
    - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
2. Update `plugins` in `~/.zshrc` file.
    ```sh
    # `zsh-syntax-highlighting` must be the last plugin sourced.

    plugins=( [plugins...] zsh-autosuggestions zsh-syntax-highlighting)
    ```
3. Restart terminal.

Install Powerlevel10k
---------------------
1. Install Powerlevel10k from [here](https://github.com/romkatv/powerlevel10k#installation).
2. Update `ZSH_THEME` in `~/.zshrc` file.
    ```sh
    ZSH_THEME="powerlevel10k/powerlevel10k"
    ```
3. Restart terminal.
4. If there is any error with fonts, see [here](https://github.com/romkatv/powerlevel10k#fonts)