Zsh Installation
================

Install Zsh & change shell
--------------------------

### Install zsh
```sh
sudo apt install zsh
```
### Change shell to zsh
```sh
# 자기 계정 "/bin/bash"를 \`which zsh\`로 변경.

sudo vi /etc/passwd
```

### Re-login
```sh
exit
```

Install & customize [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
-------------------------------------------------------------------

### Install Oh My Zsh
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
### Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
### Install [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
### Edit .zshrc
```sh
vi ~/.zshrc

# zsh-syntax-highlighting must be the last plugin sourced.
plugins=( [plugins...] zsh-autosuggestions zsh-syntax-highlighting)
```
### Run configuration file
```sh
source ~/.zshrc
```

Install & customize [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
-----------------------------------------------------------------------------

### Install the recommended font
- Download fonts from [here](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k).
- For windows terminal, add [ "fontFace": "MesloLGS NF" ] in     settings.json "defaults".
- For vscode terminal, add [ "terminal.integrated.fontFamily": "MesloLGS NF" ] in settings.json.
### Install Powerlevel10k
```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
### Edit .zshrc
```sh
vi ~/.zshrc


ZSH_THEME="powerlevel10k/powerlevel10k"
```
### Run configuration file
```sh
source ~/.zshrc
```

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