SSH Cookbook
============

Install
-------
- Install ssh server & client.
    ```sh
    sudo apt install ssh
    ```

Manage SSH Server
-----------------
- Check ssh server status.
    ```sh
    service ssh status
    ```
    ```sh
    systemctl status ssh
    ```
- Start ssh server.
    ```sh
    sudo service ssh start
    ```
    ```sh
    systemctl start ssh
    ```
- Restart ssh server.
    ```sh
    systemctl restart ssh
    ```
- Register ssh server to start automatically after booting.
    ```sh
    systemctl enable ssh
    ```

Connect to SSH Server
---------------------
```sh
ssh <username>@<host addr> -p <port>
```

Connect via SSH without Password
--------------------------------
- Add public key(`~/.ssh/id_rsa.pub`) to remote machine's authorized_keys file(`~/.ssh/authorized_keys`).
- Use `ssh-copy-id` command.

ssh_config
==========

Files
-----
- Per user : `~/.ssh/config`
- Systemwide : `/etc/ssh/ssh_config`

Form
----
```yml
# Global Settings.
Host *
    ServerAliveInterval <interval>

# Per-Host Settings.
Host <name>
    User <username>
    HostName <host_addr>
    Port <port>
    IdentityFile <file_path>
```

Keywords
--------
- [Hostname](https://man.openbsd.org/ssh_config#Hostname)
- [IdentityFile](https://man.openbsd.org/ssh_config#IdentityFile)
- [Port](https://man.openbsd.org/ssh_config#Port)
- [ServerAliveInterval](https://man.openbsd.org/ssh_config#ServerAliveInterval)
- [User](https://man.openbsd.org/ssh_config#User)

sshd_config
===========

Files
-----
- `/etc/ssh/sshd_config`

Keywords
--------
- [Port](https://man.openbsd.org/sshd_config#Port)