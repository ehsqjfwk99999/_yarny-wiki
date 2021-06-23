String Commands
===============

- [echo](https://man7.org/linux/man-pages/man1/echo.1.html)
```sh
# Print line of text.
echo "Some Strings"

# Print without newline.
echo -n "Some Strings"

# Enable backslash escape('\').
echo -e "Some Strings"
```
- [head](https://man7.org/linux/man-pages/man1/head.1.html)
- [tail](https://man7.org/linux/man-pages/man1/tail.1.html)
- [wc](https://man7.org/linux/man-pages/man1/wc.1.html)
```sh
# Print newline count.
wc -l $FILE_NAME

# Print word count.
wc -w $FILE_NAME

# Print byte count.
wc -c $FILE_NAME
```