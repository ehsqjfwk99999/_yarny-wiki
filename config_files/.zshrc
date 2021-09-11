#+==============+==================================+
#|              | Author : ehsqjfwk99999@gmail.com |
#+ Zsh Settings +----------------------------------+
#|              | Last Update : 2021-06-10         |
#+==============+==================================+

#+=======================+
#| Common                |
#+=======================+
#| Basic                 |
#+-------------------------------------------------------------------------+
alias cl="clear"                                                          #|
alias cs="cd .."                                                          #|
alias css="cd ../.."                                                      #|
alias csss="cd ../../.."                                                  #|
alias py="python3"                                                        #|
alias python="python3"                                                    #|
alias pip="pip3"                                                          #|
#+=======================+=================================================+
#| Upgrade               |
#+-------------------------------------------------------------------------+
alias u-all="upgrade-packages && upgrade-settings"                        #|
alias upgrade-packages="bash ~/.ksy-scripts/upgrade-packages.sh"          #|
alias upgrade-settings="source ~/.ksy-scripts/upgrade-settings.sh"        #|
alias install-packages="bash ~/.ksy-scripts/install-packages.sh"          #|
#+=======================+=================================================+
#| Vim hotkey            |
#+-------------------------------------------------------------------------+
alias vib="vi ~/.ksy-settings/ksy-zshrc"                                  #|
alias viz="vi ~/.ksy-settings/ksy-zshrc"                                  #|
alias viv="vi ~/.ksy-settings/ksy-vimrc"                                  #|
alias vis="vi ~/.ssh/config"                                              #|
#+=======================+=================================================+
#| Source hotkey         |
#+-------------------------------------------------------------------------+
alias sourceb="source ~/.ksy-scripts/source-settings.sh"                  #|
alias sourcez="source ~/.ksy-scripts/source-settings.sh"                  #|
#+=======================+=================================================+
#| Git hotkey            |
#+-------------------------------------------------------------------------+
alias gcl="git clone"                                                     #|
alias gad="git add ."                                                     #|
alias gcm="git commit -m"                                                 #|
alias gcam="git commit -am"                                               #|
#+=======================+=================================================+
#| MySQL hotkey          |
#+-------------------------------------------------------------------------+
# alias start-mysql="sudo service mysql start"                            #|
#+=======================+=================================================+

#+=======================+
#| For Zsh               |
#+=======================+
#| lsd(LSDeluxe) hotkey  |
#+-------------------------------------------------------------------------+
# alias ls="lsd"                                                          #|
# alias l="ls -al"                                                        #|
# alias ll="ls -al"                                                       #|
#+=======================+=================================================+

#+=======================+
#| For WSL2              |
#+=======================+
#| Variable              |
#+-----------------------+-----------------+
# WIN_HOME_PATH="<windows home path>"     #|
#+=======================+=================+
#| Home hotkey           |
#+-------------------------------------------------------------------------+
# alias cdd="cd ${WIN_HOME_PATH}/_source"                                   #|
# alias cddd="cd ${WIN_HOME_PATH}"                                          #|
#+=======================+=================================================+

#+=======================+
#| Environmet Variables  |
#+=======================+
#| Golang                |
#+-------------------------------------------------------------------+
# export GOROOT=/usr/local/go                                       #|
# export GOPATH=$HOME/gogogo                                        #|
# export PATH=$PATH:$GOROOT/bin:$GOPATH                             #|
#+=======================+===========================================+