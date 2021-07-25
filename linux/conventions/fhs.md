Filesystem Hierarchy Standard
=============================

```sh
# Root directory of the entire filesystem.
/
|
|   # Directory for essential command binaries.
|-- /bin
|
|   # Directory for boot loader files.
|-- /boot
|
|   # Directory for deviec files.
|-- /dev
|
|   # Directory for configuration files.
|-- /etc
|
|   # Parent directory of user's home directories.
|-- /home
|
|   # Directory for libraries for system.
|-- /lib
|
|   # Directory for temporarily mounted filesystems.
|-- /mnt
|
|   # Virtual filesystem for system and process information.
|-- /proc
|        \
|         |   # Contain information about Linux release.
|         |-- /proc/version
|         |
|         |   # Contain information about the cpus.
|         |-- /proc/cpuinfo
|         |
|         |   # Contain summary of memory managed by kernel.
|         |-- /proc/meminfo
|
|   # Home directory for the root user.
|-- /root
|
|   # Directory for runtime files.
|-- /run
|
|   # Directory for system command binaries.
|-- /sbin
|
|   # Virtual filesystem for system information.
|-- /sys
|
|   # Directory for temporary files.
|-- /tmp
|
|   # ?
|-- /usr
|       \
|        |   # Path for basic program installation.
|        |-- /usr/bin
|        |
|        |   # Path for system program installation.
|        |-- /usr/sbin
|
|   # Directory for logs and datas.
|-- /var
```