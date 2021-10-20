Zsh Cookbook
============

Zsh Installation
================

Install Zsh
-----------
1. Install Zsh & change shell.
    ```sh
    sudo apt install zsh && chsh -s `which zsh`
    ```
2. Check `/etc/passwd`.
    - If chsh didn't work, manually change `/bin/bash` to `$(which zsh)`.

Install Oh My Zsh
-----------------
1. Install from [here](https://github.com/ohmyzsh/ohmyzsh#basic-installation).

Install Oh My Zsh Plugins
-------------------------
1. Install Plugins.
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
    - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
2. Update `~/.zshrc` file.
    ```sh
    # zsh-syntax-highlighting must be the last plugin sourced.

    plugins=( [plugins...] zsh-autosuggestions zsh-syntax-highlighting)
    ```

Install Powerlevel10k
---------------------
1. Install Powerlevel10k from [here](https://github.com/romkatv/powerlevel10k#installation).
2. Update `~/.zshrc` file.
    ```sh
    ZSH_THEME="powerlevel10k/powerlevel10k"
    ```
3. If error with fonts, see [here](https://github.com/romkatv/powerlevel10k#fonts)

Install [LSDeluxe](https://github.com/Peltoche/lsd)
---------------------------------------------------

### Download .deb package
- Download lsd_*version*_amd64.deb from [here](https://github.com/Peltoche/lsd/releases).
### Install .deb package
```sh
sudo dpkg -i <name of downloaded file>
```
### Edit .zshrc
```sh
vi ~/.zshrc
    
# Change ls, ll, l 
alias ls="lsd"
alias l="ls -al"
alias ll="ls -al"
```
### Run configuration file
```sh
source ~/.zshrc
```