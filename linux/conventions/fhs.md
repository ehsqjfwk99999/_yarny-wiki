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
|        \
|         |   # Null device.
|         |-- /dev/null
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
|         |   # Show information about Linux (kernel) release.
|         |-- /proc/version
|         |
|         |   # Show information about the cpus.
|         |-- /proc/cpuinfo
|         |
|         |   # Show summary of memory managed by kernel.
|         |-- /proc/meminfo
|         |
|         |   # List of devices.
|         |-- /proc/devices
|         |
|         |   # List of modules.
|         |-- /proc/modules
|         |
|         |   # Shows mapped memory of specific process.
|         |-- /proc/<pid>/maps
|         |
|         |   # Drop cache.
|         |-- /proc/sys/vm/drop_caches
|         |
|         |   # Shows system limit of open files.
|         |-- /proc/sys/fs/file-max
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

