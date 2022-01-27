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
|       \
|        |   # Null device.
|        |-- /dev/null
|
|   # Directory for configuration files.
|-- /etc
|       \
|        |   # Show group information.
|        |-- /etc/group
|        |
|        |   # File containing IP host and address mappings.
|        |-- /etc/hosts
|        |
|        |   # Show os information.
|        |-- /etc/os-release
|        |
|        |   # Information of system user accounts.
|        |-- /etc/passwd
|        |
|        |   # Information of system dns name server configuration.
|        |-- /etc/resolv.conf
|        |
|        |   # Information of system users' passwords.
|        |-- /etc/shadow
|        |
|        |   # File to administrate system rights to users.
|        |-- /etc/sudoers
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
|         |   # Show interrupt information.
|         |-- /proc/interrupts
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
|         |   # Shows specific process info.
|         |-- /proc/<pid>
|                        \
|                         |
|                         |   # Command name of specific process.
|                         |-- /proc/<pid>/comm
|                         |
|                         |   # Mapped memory of specific process.
|                         |-- /proc/<pid>/maps
|                         |
|                         |   # Namespaces of specific process.
|                         |-- /proc/<pid>/ns
|                         |
|                         |   # CPU scheduling of specific process.
|                         |-- /proc/<pid>/sched
|                         |
|                         |   # Status information of specific process. Used by ps command.
|                         |-- /proc/<pid>/stat
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

