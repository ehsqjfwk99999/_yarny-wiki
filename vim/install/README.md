Vim Installation
================

Install Vim
-----------
```sh
sudo apt install vim
```
Open(create) .vimrc file
------------------------
```sh
vi ~/.vimrc

# copy and paste my .vimrc configuration.
```

Install [vim-plug](https://github.com/junegunn/vim-plug)
--------------------------------------------------------
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Install plugins
---------------
```sh
vi

:PlugInstall
```
