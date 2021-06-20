SSH Commands
============

Install
-------

- Install ssh server & client.
```sh
    sudo apt install ssh
```

SSH Server
----------

- Run ssh server.
```sh
    sudo service ssh start
```
- Check ssh server status.
```sh
    service ssh status
```

SSH Client
----------

- Connect server.
```sh
    ssh $USER_NAME@$HOST_ADDRESS -p $PORT
```