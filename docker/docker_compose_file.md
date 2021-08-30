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
        container_name: express-app
		build : .
		ports:
			- "3300:3300"
	redis-server:
        container_name: redis-server
		image: redis
```

Options
-------
- version
```yaml
# Version of docker compose file format.

version: <version>
```
- services
    - [build](https://docs.docker.com/compose/compose-file/compose-file-v3/#build)
        ```yaml
        # Path to dockerfile.

        build: <path>
        ```
        - [context](https://docs.docker.com/compose/compose-file/compose-file-v3/#context)
        - [dockerfile](https://docs.docker.com/compose/compose-file/compose-file-v3/#dockerfile)
    - [container_name](https://docs.docker.com/compose/compose-file/compose-file-v3/#container_name)
        ```yaml
        # Container name, rather than a generated default name.

        container_name: <container_name>
        ```
    - [environment](https://docs.docker.com/compose/compose-file/compose-file-v3/#environment)
    - [image](https://docs.docker.com/compose/compose-file/compose-file-v3/#image)
        ```yaml
        # Image to start the container from.

        # image: <image>
        ```
    - [ports](https://docs.docker.com/compose/compose-file/compose-file-v3/#ports)
        ```yaml
        # Connect container port with host port.

        ports:
            - "<port_host>:<port_container>"
        ```
    - [restart](https://docs.docker.com/compose/compose-file/compose-file-v3/#restart)
    - [volumes](https://docs.docker.com/compose/compose-file/compose-file-v3/#volumes)
