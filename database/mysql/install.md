MySQL Installation
==================

Install MySQL Server
--------------------

```sh
sudo apt install mysql-server
```

Start MySQL Server
------------------

```sh
# For WSL2(no systemd, systemctl).
sudo service mysql start
```
```sh
# If error with '/nonexistent' dir.
sudo mkdir /nonexistent

# Start MySQL server again.
```

MySQL Secure Installation
-------------------------

```sh
# Set up password for root user and configure password policy.
sudo mysql_secure_installation
```