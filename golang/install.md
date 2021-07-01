Golang Install
==============

Download
--------

- Download Go from [here](https://golang.org/dl/)
```sh
wget $DOWNLOAD_LINK
```

Install
-------

- Create Go tree in /usr/local/go.
```sh
sudo su
```
```sh
rm -rf /usr/local/go && tar -C /usr/local -xzf $DOWNLOAD_FILE
```

- Add /usr/local/go/bin to the PATH.
```sh
export PATH=$PATH:/usr/local/go/bin
```

- Check installation.
```sh
go version
```

Additional Configuration
-----------------------

- Configure environment variables.
```sh
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH
```

- Create directories.
```sh
cd $GOPATH && mkdir bin pkg src
```

Installation Script
-------------------

```sh
# Download Golang.
# Find binary release at https://golang.org/dl/.
wget $DOWNLOAD_PATH

# Create Go tree in /usr/local/go.
sudo rm -rf /usr/local/go && tar -C /usr/local -xzf $DOWNLOAD_FILE

# TBD ...
```