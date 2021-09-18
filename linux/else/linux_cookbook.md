Linux Cookbook
==============

Turn off bell on tab-completion
-------------------------------
1. Go to `/etc/inputrc` by root.
    ```sh
    sudo vi /etc/inputrc
    ```
2. Uncomment `set bell-style none` line.
    ```sh
    set bell-style none
    ```

Get help for commands
---------------------
1. Print help message.
    ```sh
    <command> [ -h | --help | -help ]
    ```
2. Visit man page.
    ```sh
    man <command>
    ```

Check System Info
-----------------
- Memory Info
    ```sh
    free -h
    ```
    ```sh
    cat /proc/meminfo
    ```
- CPU Info
    ```sh
    lscpu
    ```
    ```sh
    cat /proc/cpuinfo
    ```
    ```sh
    nproc
    ```
- Kernel Info
    ```sh
    uname -a
    ```
    ```sh
    cat /proc/version
    ```
- OS Info
    ```sh
    lsb_release -a
    ```
    ```sh
    cat /etc/issue
    ```
- Network Info
    ```sh
    ifconfig
    ```
    ```sh
    hostname -I
    ```
    ```sh
    ip addr
    ```