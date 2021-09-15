SSH Cookbook
============

Install
-------
- Install ssh server & client.
    ```sh
        sudo apt install ssh
    ```

SSH Server
----------
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

SSH Client
----------
- Connect server.
    ```sh
        ssh <username>@<host addr> -p <port>
    ```