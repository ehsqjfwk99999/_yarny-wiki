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
|         |   # Show information about the cpus.
|         |-- /proc/cpuinfo
|         |
|         |   # List of devices.
|         |-- /proc/devices
|         |
|         |   # Show summary of memory managed by kernel.
|         |-- /proc/meminfo
|         |
|         |   # List of modules.
|         |-- /proc/modules
|         |
|         |   # Shows system limit of open files.
|         |-- /proc/sys/fs/file-max
|         |
|         |   # File for dropping cache.
|         |-- /proc/sys/vm/drop_caches
|         |
|         |   # Show information about Linux (kernel) release.
|         |-- /proc/version
|         |
|         |   # Shows mapped memory of specific process.
|         |-- /proc/<pid>/maps
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
|   # Directory for user programs.
|-- /usr
|       \
|        |   # Path for basic program installation by package manager.
|        |-- /usr/bin
|        |
|        |   # Directory for C header files.
|        |-- /usr/include
|        |
|        |   # Path for installation from source code.
|        |-- /usr/local
|        |
|        |   # Path for system program installation by package manager.
|        |-- /usr/sbin
|
|   # Directory for logs and datas.
|-- /var
|       \
|        |   # Directory for various log files.
|        |-- /var/log
```

