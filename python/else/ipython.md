IPython Cookbook
================

'%time' vs '%%time'
-------------------
| Command | Action | 
|:-------:|:------:|
| %time | Estimate the time to execute only the statement beside '%time' command. |
| %%time | Estimate the time to execute everything in the cell. |

IPython Magic Commands
======================

Line Magics
-----------

- [%auto magic](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-automagic)
- [%history](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-history)
```ipython
## Optional Arguments
# Print line numbers
%history -n
```
- [%pwd](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-pwd)
- [%cd](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-cd)
- [%env](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-env)
- [%matplotlib](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-matplotlib)
- [%time](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-time)
- [%timeit](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-timeit)
- [%]()

Cell Magics
-----------

- [%%time](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-time)
- [%%timeit](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-timeit)
- [%%writefile](https://ipython.readthedocs.io/en/stable/interactive/magics.html#cellmagic-writefile)