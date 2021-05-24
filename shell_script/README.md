Shell Script
============

![Bash Logo](./logo.png)

Authority
---------
- Shell script file must be executable.
```sh
    chmod +x $SHELL_SCRIPT
```

Shell Program
-------------
- Must indicate shell program to use on the top of shell script.
```sh
    #! /bin/bash
```

Grammer
-------

### Comment
```sh
    # This line is commented.
```

### IF Statement
- if
```sh
    if [ $variable -eq $constant ]; then
        echo "Something to do in if condition"s
    fi
```
- if-else
```sh
    if [ $variable -eq $constant ]; then
        echo "Something to do in if condition"
    else
        echo "Something to do in else condition"
    fi
```
- if-elif-else
```sh
    if [ $variable -eq $constant_1 ]; then
        echo "Something to do in if condition"
    elif [ $variable -eq $constant_2 ]; then
        echo "Something to do in elif condition"
    else
        echo "Something to do in else condition"
    fi
```

### While Statement
```sh
    while [ $variable -lt $constant ]; do
        echo "Something to do when while condition"
    done
```