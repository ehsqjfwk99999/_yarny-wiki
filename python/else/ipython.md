IPython
=======

`!<command>` vs `%<command>`
----------------------------
| Syntax | Action | 
|:------:|:------:|
| `!<command>` | Command is executed in subshell. |
| `%<command>` | Command is executed in current environment. |


`%time` vs `%%time`
-------------------
| Command | Action | 
|:-------:|:------:|
| `%time` | Estimate the time to execute only the statement beside '%time' command. |
| `%%time` | Estimate the time to execute everything in the cell. |

IPython Magic Commands
======================

Line Magics
-----------

- [%automagic](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-automagic)
    ```ipython
    ## %automagic
    # Make magic functions callable without '%'.

    # Activate automagic.
    %automagic 1
    # Deactivate automagic.
    %automagic 0
    ```
- [%history](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-history)
    ```ipython
    ## %history [-n]
    # Print input history.

    %history

    # Print with line numbers.
    %history -n
    ```
- [%pwd](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-pwd)
- [%cd](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-cd)
- [%env](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-env)
- [%matplotlib](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-matplotlib)
- [%time](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-time)
- [%timeit](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-timeit)

Cell Magics
-----------

- [%%time](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-time)
- [%%timeit](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-timeit)
- [%%writefile](https://ipython.readthedocs.io/en/stable/interactive/magics.html#cellmagic-writefile)