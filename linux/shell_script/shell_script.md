Shell Script
============

Tips
----
- Always use ${variable} for variables.

Authority
---------
```sh
# Shell script file must be executable.

chmod +x $SHELL_SCRIPT
```

Shell Program
-------------
```sh
# Must indicate shell program to use on the top of shell script.

#! /bin/bash
```

Grammer
-------

### - Comment
```sh
# This line is commented.
```

### - Read
```sh
# Read a single line from stdin.

read $INPUT_VARIABLE

# With some output.
read -p "Some output ... " $INPUT_VARIABLE
```

### - Exit
```sh
# Exit script.
# If no explicit exit status, exit with status of last command run.

exit

# Exit with exit status.
exit $STATUS_NUMBER
```

### - Array
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

### - Test Command
```sh
# True : exit status = 0
# False : exit status = 1

[ $SOME_EXPRESSION ]
```

### - True or False
```sh
# Exit status = 0 => True
# Exit status = non-zero => False
```

### - Null
```sh
# Empty string is considered null.

$NULL_STRING=""
```

### - Function
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

Additional
----------

### - getops
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

### - Redirect 
- Redirect both stdout(1) and stderr(2).
```sh
./some_script.sh &> log.txt
```
- Throw away output.
```sh
./some_script.sh > /dev/null
```

### - Command Substitution
```sh
# Execute command and capture the output.

$($SOME_COMMAND)
```

### - Compare Regex
```sh
# Use '[[ ... ]]' and '=~'.
# Expression on the right side of '=~' is considered regex.
# Return true if matched, else false.

[[ $VARIABLE =~ $REGEX ]]
```