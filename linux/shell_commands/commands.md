Linux Commands
==============

- [service](https://linux.die.net/man/8/service)
```sh
# Service are listed in /etc/init.d.

# Start service.
sudo service $SERVICE start

# Stop service.
sudo service $SERVICE stop

# Restart service.
sudo service $SERVICE restart

# Show service status.
sudo service $SERVICE status
```
- [ctags](https://linux.die.net/man/1/ctags)
```sh
ctags -R
```
- [curl](https://man7.org/linux/man-pages/man1/curl.1.html)
```sh
    curl $URL
    curl -s $URL
    curl $URL -o $FILE_NAME
    curl -O $URL
```
- [file](https://man7.org/linux/man-pages/man1/file.1.html)
```sh
file $FILE_NAME
```
- [history]()
```sh
# Show all input commands.
history

# Delete all history.
history -c
```
- [ssh-keygen](https://man7.org/linux/man-pages/man1/ssh-keygen.1.html)
```sh
ssh-keygen
```
- [unzip](https://linux.die.net/man/1/unzip)
```sh
    unzip $ZIP_FILE
```