Docker Compose File
===================

Configuration File
------------------
- docker-compose.yml

Structure
---------
```yml
version: "3"
services:
	<CONTAINER_NAME>:
		image: <IMAGE>
	<CONTAINER_NAME>:
		build : <BUILD_PATH>
		ports:
			- "<PORT_HOST>:<PORT_CONTAINER>"
```

Options
-------
- version
- services
    - [build](https://docs.docker.com/compose/compose-file/compose-file-v3/#build)
        - [context](https://docs.docker.com/compose/compose-file/compose-file-v3/#context)
        - [dockerfile](https://docs.docker.com/compose/compose-file/compose-file-v3/#dockerfile)
    - [container_name](https://docs.docker.com/compose/compose-file/compose-file-v3/#container_name)
    - [environment](https://docs.docker.com/compose/compose-file/compose-file-v3/#environment)
    - [image](https://docs.docker.com/compose/compose-file/compose-file-v3/#image)
    - [ports](https://docs.docker.com/compose/compose-file/compose-file-v3/#ports)
    - [restart](https://docs.docker.com/compose/compose-file/compose-file-v3/#restart)
    - [volumes](https://docs.docker.com/compose/compose-file/compose-file-v3/#volumes)
