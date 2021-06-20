ssh_config
==========

Files
-----
- Per-user configuration file.
```sh
    ~/.ssh/config
```
- Systemwide configuration file.
```sh
    /etc/ssh/ssh_config
```

Form
----

- For ~/.ssh/config.
```yml
    # Global Settings.
    Host *
        ServerAliveInterval 120

    # Per-Host Settings.
    Host $NAME
        User $USER_NAME
        HostName $HOST_ADDRESS
        Port $PORT
        IdentityFile $SSH_KEY_PATH
```