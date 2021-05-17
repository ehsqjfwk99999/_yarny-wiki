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
    sudo apt install build-essential libncurses5 libncurses5-dev bin86 kernel-package libssl-dev bison flex libelf-dev
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
- Check number of cpu core.
```sh
    grep -c processor /proc/cpuinfo
```
- Build.
```sh
    make -j $NUM_CPU_CORE
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