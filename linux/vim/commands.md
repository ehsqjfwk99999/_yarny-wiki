Vim Commands
============

File Open & Close
-----------------

- Open File
```vim
vi $FILE_NAME
```
- Close File
```vim
" Exit.
:q
" Exit without saving.
:q!

" Save.
:w

" Save and exit.
:wq
:x
```

Modes
-----

- Insert Mode
```vim
" Insert mode in current place.
i

" Insert mode with new next line.
o
```

Move
----

- Move Cursor
```vim
" Move to first line of file.
gg

" Move to last line of file.
G
```
- Move Screen
```vim
" Move one page down.
Ctrl + f
" Move one page up.
Ctrl + b

" Move one line down with cursor fixed.
Ctrl + e
" Move one line up with cursor fixed.
Ctrl + y
```

Search
------

- Search
```vim
" Search with whitespaces.
/$KEYWORD

" Search only word.
/\<$KEYWORD\>
```

- Move Search Results.
```vim
" Move downward.
n

" Move upward.
N
```

Edit
----

- Copy
```vim
" Copy current line.
yy
```
- Cut
```vim
" Cut current line.
dd
```
- Paste
```vim
" Paste in next new line.
p
```
- Undo & Redo
```vim
" Undo
u

" Redo undone things.
Ctrl + r

" Repeat last action.
.
```