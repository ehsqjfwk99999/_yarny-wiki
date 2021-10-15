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

Check & Execute
---------------
- Check file and execute.
    ```Makefile
    # 'true' at the end is needed because if test command([]) fails, whole process stops here.

    [ -f <file> ] && <command> || true
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

Basic Structure & Rules
-----------------------
```Makefile
<target>: <prerequisites>
    <recipe>
```
- `target` on top is executed.
- `target` is executed if
    - file 'target' doesn't exist.
    - at least one file in `prerequisites` changed.
- `recipe` must start with tab.
- Shell script can be used in `recipe`.
- If `recipe` fails, whole process is stopped.

Comment
-------
```Makefile
# This is comment.
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