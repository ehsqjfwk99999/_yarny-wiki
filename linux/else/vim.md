Vim
===

Config file
-----------
- `~/.vimrc`

Vim Commands
============

File Open & Close
-----------------
| Action | Command |
|:------:|:-------:|
| Open file | `vi <filename>` |
| Exit | `:q` |
| Exit (no save) | `:q!` |
| Save | `:w` |
| Save & Exit | `:wq` or `:x`|

Modes
-----
- Insert Mode   
    | Action | Command |
    |:------:|:-------:|
    | Insert in current place | `i` |
    | Insert with new next line | `o` |

Move
----
- Move Cursor
    | Action | Command |
    |:------:|:-------:|
    | Move to first line of file | `gg` |
    | Move to last line of file |  `G` |
- Move Screen
    | Action | Command |
    |:------:|:-------:|
    | Move one page down | `Ctrl + f` |
    | Move one page up | `Ctrl + b` |
    | Move one line down with cursor fixed | `Ctrl + e` |
    | Move one line up with cursor fixed | `Ctrl + y` |

Search
------
- Search
    | Action | Command |
    |:------:|:-------:|
    | Search with whitespaces | `/$KEYWORD` |
    | Search only word | `/\<$KEYWORD\>` |
- Move Search Results
    | Action | Command |
    |:------:|:-------:|
    | Move downward | `n` |
    | Move upward | `N` |

Edit
----
- Edit
    | Action | Command |
    |:------:|:-------:|
    | Copy current line | `yy` |
    | Cut current line | `dd` |
    | Paste in next new line | `p` |
- Action
    | Action | Command |
    |:------:|:-------:|
    | Undo | `u` |
    | Redo undone things | `Ctrl + r` |
    | Repeat last action | `.` |

Split
-----
- Split Window
    | Action | Command |
    |:------:|:-------:|
    | Horizontal split | `:split` or `:sp` |
    | Horizontal split new file | `:sp <filename>` |
    | Vertical split | `:vsplit` or `:vs` |
    | Vertical split new file | `:vs <filename>` |
- Action
    | Action | Command |
    |:------:|:-------:|
    | Move to next window | `Ctrl + w` `w` |
    | Increase current window height by `n` | `:resize +n` |
    | Decrease current window height by `n` | `:resize -n` |
    | Increase current window width by `n` | `:vertical resize +n` |
    | Decrease current window width by `n` | `:vertical resize -n` |

Vim Installation
================

Install Vim
-----------
1. Install Vim.
    ```sh
    sudo apt install vim
    ```

Install vim-plug
----------------
1. Install from [here](https://github.com/junegunn/vim-plug).
2. Install plugins.
    ```sh
    # In vim.

    :PlugInstall
    ```