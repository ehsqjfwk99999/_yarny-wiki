Install Packages
================

Installation List
-----------------

### APT
- vim
- git
- gcc
- make
- ctags
- curl
- lsb
- net-tools
- unzip

### Manual
- Anaconda
- NVM
- Golang


APT Installation Script
-----------------------
```sh
#! /bin/bash

packages=(vim git gcc make ctags curl lsb net-tools unzip)

successful=0
error=0

for package in ${packages[@]}; do
    sudo apt-get install ${package} &> /dev/null
    if [ $? -eq 0 ]; then
        successful=$(($successful + 1))
        echo "Installed : ${package}"
    else
        error=$(($error + 1))
        echo "============> Error : ${package}"
    fi
done

echo
echo "############## Result ##############"
echo "Successfully installed ${successful}/${#packages[@]} packages."
```