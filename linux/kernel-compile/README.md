Linux Kernel Compile
====================

![Linux Logo](./logo.gif)

Files
-----
- [Linux Logo](./logo.gif)
<!-- - []() -->

Steps
-----

### Download packages
```sh
    sudo apt install -y build-essential libncurses5 libncurses5-dev bin86 kernel-package libssl-dev bison flex libelf-dev
```

### Download linux kernel
- Choose kernel version from [here](https://www.kernel.org/).
```sh
    curl -O $URL
```
- Unzip
```sh
    tar Jxvf $TAR_XZ_FILE
```
- Move to kernel directory.
```sh
    cd $KERNEL_DIR
```
- Use root.
```sh
    sudo su
```

### Copy config file
```sh
    cp /boot/$CONFIG_FILE .config
```

### Build
```sh
    make -j `grep -c processor /proc/cpuinfo`
```

### Install
```sh
    make modules
    make modules_install
    make install
```

### Reboot
```sh
    sudo reboot
```

### Check kernel version
```sh
    uname -a
```

Errors
------

### No rule to make target 'debian/canonical-certs.pem', needed by 'certs/x509_certificate_list'.
- change .config file.
```sh
    CONFIG_SYSTEM_TRUSTED_KEYS=""
```