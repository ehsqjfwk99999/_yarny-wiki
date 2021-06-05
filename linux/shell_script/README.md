Shell Script
============

![Bash Logo](./logo.png)

Tips
----
- Always use ${variable} for variables.

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

### Variable
- global variable.
```sh
# No whitespace on both side of '='.
global_variable=$VARIABLE
```
- local variable.
```sh
# Only allowed in function.
function function_one() {
    local local_variable=$VARIABLE
    echo "Something to do in function"
}
```

### Array
- Declaration
```sh
$ARRAY_NAME=($ELEMENT_1 $ELEMENT_2 $ELEMENT_3 ...)
```
- Use
```sh
# Must use with '{}'.

# ith element.
${$ARRAY_NAME[i]}

# All elements.
${$ARRAY_NAME[*]}
${$ARRAY_NAME[@]}

# Number of elements.
${#ARRAY_NAME[*]}
${#ARRAY_NAME[@]}
```

### IF Statement
- if
```sh
if [ $VARIABLE -eq $CONSTANT ]; then
    echo "Something to do in if condition"s
fi
```
- if-else
```sh
if [ $VARIABLE -eq $CONSTANT ]; then
    echo "Something to do in if condition"
else
    echo "Something to do in else condition"
fi
```
- if-elif-else
```sh
if [ $VARIABLE -eq $CONSTANT_1 ]; then
    echo "Something to do in if condition"
elif [ $VARIABLE -eq $CONSTANT_2 ]; then
    echo "Something to do in elif condition"
else
    echo "Something to do in else condition"
fi
```

### For Statement
- for in
```sh
for $VARIABLE in $LIST; do
    echo "Something to do in for statement"
done
```
- for ()
```sh
for (($VAR=0;$VAR<10;$VAR++)); do
    echo "Something to do in for statement"
done
```


### While Statement
```sh
while [ $VARIABLE -lt $CONSTANT ]; do
    echo "Something to do when while condition"
done
```

### Case Statement
```sh
case $VARIABLE in
    $CASE_1)
        echo "Something to do with case 1"
        ;;
    $CASE_2)
        echo "Something to do with case 2"
        ;;
    *)
        echo "Something to do with other cases"
        ;;
esac
```

### Function
- Function Declaration
```sh
function function_one() {
    echo "Something to do in function"
}
```
```sh
# function keyword can be omitted.
function_two() {
    echo "Something to do in function"
}
```
- Function Call
```sh
# Funtion should be called after declaration.
function_one $ARGUMENT_1 $ARGUMENT_2 ...
```

Pre-Defined
-----------

Operators
---------



Usages
------

### getops
```sh
while getops ab: $OPTION_VARIABLE; do
    # option without argument has only alphabet => a
    # option with argument must end with ':' => b:
    case $OPTION_VARIABLE in
        a) 
            echo "Something to do with case a" 
            ;;
        b) 
            echo "Something to do with case b"
            ;;
        *) 
            echo "Something to do with other cases"
            ;;
    esac
done
```