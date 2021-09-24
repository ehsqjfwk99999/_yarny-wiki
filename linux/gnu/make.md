GNU Make Cookbook
=================

Check Version
-------------
```sh
make -v
```
```sh
make --version
```

Multiple Targets
----------------
```Makefile
# Use 'all' target.

all: a.out b.out c.out
```

Recursive Make
--------------
```Makefile
# Use '$(MAKE)'.

submake:
    $(MAKE) -C subdir target
```

GNU Make Reference
==================

Comment
-------
```Makefile
# This is comment.
```

CLI Options
-----------
```Makefile
# make [-C] [-j]

# Change to directory <dir> before execute.
make -C <dir> <target>
```

Basic Structure
---------------
```Makefile
# Command list must start with tab.

<target>: <dependency list>
    <command list>
```

Built-in Target Names
---------------------
| Target | Usage |
|:------:|:-----:|
| `.PHONY` | List of targets for running unconditionally |
| `.SUFFIXES` | List of suffixes used in checking for suffix rules |

Macros
------
- Special Macros
    | Macro | Usage |
    |:-----:|:-----:|
    | `$@` | Currnet target |
    | `$^` | All dependency files |
    | `$<` | First dependency file |
    | `$?` | ? |
    | `$*` | ? |
- Conventional Macros
    | Macro | Usage |
    |:-----:|:-----:|
    | `CC` | C compiler |
    | `CFLAGS` | Flags for C compiler |
    | | |

Phony Targets
-------------
- all
    ```Makefile
    # all
    # If on top, all the dependencies of all becomes the target to execute.
    ```
- clean
    ```Makefile
    # clean
    # Used for removing defined files and directories.
    ```

Functions
---------
- addsuffix
    ```Makefile
    # $(addsuffix <suffix>, <names>)
    # Append suffix to names.
    ```
- shell
    ```Makefile
    # $(shell <commands>)
    # Evaluate shell command to the output of command.
    ```
- subset
    ```Makefile
    # $(subst <from>, <to>, <text>)
    # Replace 'from' to 'to' in text 'text'.
    ```

$(MAKE)
-------
```Makefile
# $(MAKE)
# The file name with which make was invoked.(?)
# TBD...
```