Docker Compose File
===================

Configuration File
------------------
- docker-compose.yml

Structure
---------
```yaml
version: "3"

services:
  express-app:
    ...

  redis-server:
    ...
```

Options
-------
- version
    ```yaml
    # Version of docker compose file format.

    version: "3"
    ```
- services
    - [build](https://docs.docker.com/compose/compose-file/compose-file-v3/#build)
        ```yaml
        # Path for dockerfile to build.

        build: .
        ```
        - [context](https://docs.docker.com/compose/compose-file/compose-file-v3/#context)
        - [dockerfile](https://docs.docker.com/compose/compose-file/compose-file-v3/#dockerfile)
    - [container_name](https://docs.docker.com/compose/compose-file/compose-file-v3/#container_name)
        ```yaml
        # Container name, rather than a generated default name.

        container_name: mongodb_server
        ```
    - [depends_on](https://docs.docker.com/compose/compose-file/compose-file-v3/#depends_on)
        ```yaml
        # Control starting order of containers.

        depends_on:
          - nestjs
          - redis
        ```
    - [environment](https://docs.docker.com/compose/compose-file/compose-file-v3/#environment)
        ```yml
        # Add environment variables.

        # Dictionary
        environment:
          MYSQL_USER: user
          MYSQL_PASSWORD: password

        # Array
        environment:
          - MYSQL_USER=user
          - MYSQL_PASSWORD=password
        ```
    - [image](https://docs.docker.com/compose/compose-file/compose-file-v3/#image)
        ```yaml
        # Image to start the container from.

        image: node
        ```
    - [ports](https://docs.docker.com/compose/compose-file/compose-file-v3/#ports)
        ```yaml
        # Connect container port with host port.

        ports:
          - <host_port>:<container_port>
        ```
    - [restart](https://docs.docker.com/compose/compose-file/compose-file-v3/#restart)
        ```yml
        # Declare restart policy.

        # Never restart.(default)
        restart: "no"
        # Always restart.
        restart: always
        ```
    - [volumes](https://docs.docker.com/compose/compose-file/compose-file-v3/#volumes)
        ```yml
        # Mount host path or named volumes.

        volumes:
          - <host_dir>:<container_dir>
          - <named_volume>:<container_dir>
        ```
- [volumes](https://docs.docker.com/compose/compose-file/compose-file-v3/#volumes)
    ```yml
    # Declare named volumes

    volumes:
      my_data:
      db_data: {}
    ```