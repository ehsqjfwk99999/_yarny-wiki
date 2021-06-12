Shell Script
============

![Bash Logo](./logo.png)

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

### - Variable
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

### - Parameter expansion
```sh
# ${VARIABLE} is substituted with $VARIABLE.

${$VAR}
```
```sh
# Return length of $VAR.

${#$VAR}
```
```sh
# if $VAR is not defined, return $DIS_VAR.
${$VAR-$DIS_VAR}
# if $VAR is not defined or null, return $DIS_VAR.
${$VAR:-$DIS_VAR}
```
```sh
# if $VAR is not defined, substitute $VAR with $DIS_VAR and return $DIS_VAR.
${$VAR-$DIS_VAR}
# if $VAR is not defined or null, substitute $VAR with $DIS_VAR and return $DIS_VAR.
${$VAR:-$DIS_VAR}
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

### - IF Statement
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

### - For Statement
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


### - While Statement
```sh
while [ $VARIABLE -lt $CONSTANT ]; do
    echo "Something to do when while condition"
done
```

### - Case Statement
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

Pre-Defined
-----------

### - Reserved Variables
| Variable | Descripttion |
| :------: | :----------: |
| ${HOME} | Home path |
| ${PATH} | Path to find executing files |
| ${PWD} | Current directory path |
| ${SHELL} | Current shell |

### - Positional Parameters.
| Variable | Descripttion |
| :------: | :----------: |
| ${0} | Executed script |
| ${1}, ${2}, ... | Parameters |
| ${*}, ${@} | All parameters |
| ${#} | Parameter count |

### - Special Parameters.
| Variable | Descripttion |
| :------: | :----------: |
| ${$} | PID of current script |
| ${?} | Exit code of last execution |

Operators
---------

### - Arithmetic Operators.
| Operator | Descripttion |
| :------: | :----------: |
| + | Add |
| - | Subtract |
| * | Multiply |
| ** | Power |
| / | Divide |
| % | Modulo |
| += | Plus-equal |
| -= | Minus-equal |
| *= | Times-equal |
| /= | Slash-equal |
| %= | Mod-equal |

### - Logical Operators.
| Operator | Descripttion |
| :------: | :----------: |
| &&, -a | Logical AND |
| \|\|, -o | Logical OR |

### - Integer Comparison Operators.
| Operator | Descripttion |
| :------: | :----------: |
| -eq | Equal |
| -ne | Not equal |
| >, -gt | Greater than |
| >=, -ge | Greater or equal |
| <, -lt | Less than |
| <=, -le | Less or equal |

### - String Comparison Operators.
| Operator | Descripttion |
| :------: | :----------: |
| =, == | Equal |
| != | Not equal |
| > | Bigger in ASCII |
| < | Smaller in ASCII |
| -z | Length is 0 |
| -n | Length is not 0 |

### - File Test Operators.
| Operator | Descripttion |
| :------: | :----------: |
| -d | If directory |
| -e | If file |
| -b | If block special file |
| -c | If character special file |

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