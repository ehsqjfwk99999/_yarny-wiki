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
        # build <path>
        # Path for Dockerfile to build.

        build: .

        # Build with image name 'my_app'.
        build: .
        image: my_app
        ```
        - [context](https://docs.docker.com/compose/compose-file/compose-file-v3/#context)
        - [dockerfile](https://docs.docker.com/compose/compose-file/compose-file-v3/#dockerfile)
    - [container_name](https://docs.docker.com/compose/compose-file/compose-file-v3/#container_name)
        ```yaml
        # container_name: <name>
        # Container name, rather than a generated default name.

        container_name: mongodb_server
        ```
    - [depends_on](https://docs.docker.com/compose/compose-file/compose-file-v3/#depends_on)
        ```yaml
        # depends_on
        #   - <service>
        # Control starting order of containers.

        depends_on:
          - nestjs
          - redis
        ```
    - [environment](https://docs.docker.com/compose/compose-file/compose-file-v3/#environment)
        ```yml
        # environment:
        #   <key>: <value>
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
        # image: <image>
        # Image to start the container from.

        image: node
        ```
    - [ports](https://docs.docker.com/compose/compose-file/compose-file-v3/#ports)
        ```yaml
        # ports:
        #   - <host_port>:<container_port>
        # Connect container port with host port.

        ports:
          - 3000:80
        ```
    - [restart](https://docs.docker.com/compose/compose-file/compose-file-v3/#restart)
        ```yml
        # restart: <policy>
        # Declare restart policy.

        # Never restart.(default)
        restart: "no"
        # Always restart.
        restart: always
        # Restart when exit code indicates error.
        restart: on-failure
        ```
    - [volumes](https://docs.docker.com/compose/compose-file/compose-file-v3/#volumes)
        ```yml
        # volumes:
        #   - <host_dir>:<container_dir>
        #   - <docker_volume>:<container_dir>
        # Mount host path or named volumes.

        volumes:
          - .:/app
        ```
- [volumes](https://docs.docker.com/compose/compose-file/compose-file-v3/#volumes)
    ```yml
    # Declare named volumes
    # rather than empty value, use '{}'.

    volumes:
      my_data:
      db_data: {}
    ```