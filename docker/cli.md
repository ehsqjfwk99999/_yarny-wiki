Docker CLI
==========

Manage Docker
-------------
- [docker system](https://docs.docker.com/engine/reference/commandline/system/)
- [docker system prune](https://docs.docker.com/engine/reference/commandline/system_prune/)

Manage Images
-------------
- [docker images](https://docs.docker.com/engine/reference/commandline/images/)
    ```sh
    # docker images [-q]

    # Show only image IDs.
    docker images -q
    ```
- [docker rmi](https://docs.docker.com/engine/reference/commandline/rmi/)
- [docker pull](https://docs.docker.com/engine/reference/commandline/pull/)
- [docker push](https://docs.docker.com/engine/reference/commandline/push/)

Manage Containers
-----------------
- [docker ps](https://docs.docker.com/engine/reference/commandline/ps/)
    ```sh
    # docker ps [-a] [-q]

    # Show all containers.
    docker ps -a

    # Show only container IDs.
    docker ps -q
    ```
- [docker rm](https://docs.docker.com/engine/reference/commandline/rm/)

Manage Network
--------------
- [docker network](https://docs.docker.com/engine/reference/commandline/network/)
- [docker network connect](https://docs.docker.com/engine/reference/commandline/network_connect/)
- [docker network create](https://docs.docker.com/engine/reference/commandline/network_create/)

Start Container
---------------
- [docker run](https://docs.docker.com/engine/reference/commandline/run/)
    ```sh
    # docker run [-d] [-e] [-i] [-p] [-P] [-t] [-v] [--name] [--network] [--rm] <IMAGE> [COMMAND]
    # docker run = docker create + docker start.

    # Run container executing $COMMAND, overriding default command(CMD in Dockerfile).
    docker run $IMAGE $COMMAND

    # Run container setting environment variables.
    docker run -e ENV_VAR=env_var $IMAGE

    # Run container executing $COMMAND and wait until command ends.
    docker run -it $IMAGE $COMMAND

    # Run container and map $HOST_PORT to $CONTAINER_PORT.
    docker run -p $HOST_PORT:$CONTAINER_PORT $IMAGE

    # Run container mounting directory into the container.
    docker run -v $HOST_DIR $CONTAINER_DIR $IMAGE

    # Run container connecting container to $NETWORK.
    docker run --network=$NETWORK $IMAGE
    ```
- [docker create](https://docs.docker.com/engine/reference/commandline/create/)
- [docker start](https://docs.docker.com/engine/reference/commandline/start/)
    ```sh
    # docker start [-a] [-i] <CONTAINER>

    # Attach STDOUT/STDERR.
    docker start -a $CONTAINER

    # Attach container's STDIN.
    docker start -i $CONTAINER
    ```

Stop Container
--------------
- [docker stop](https://docs.docker.com/engine/reference/commandline/stop/)
- [docker kill](https://docs.docker.com/engine/reference/commandline/kill/)

Create Image
------------
- [docker build](https://docs.docker.com/engine/reference/commandline/build/)
    ```sh
    # docker build [-f] [-t] <PATH>
    # Directory of path must have Dockerfile.

    # Build image of $DOCKERFILE_NAME in $PATH.
    # Default is 'PATH/Dockerfile'.
    docker build -f $DOCKERFILE_NAME $PATH

    # Build and give a name(tag) for new image.
    docker build -t $TAG $PATH
    ```
- [docker commit](https://docs.docker.com/engine/reference/commandline/commit/)
    ```sh
    # docker commit <CONTAINER> [REPOSITORY[:TAG]]
    ```

Else
----
- [docker exec](https://docs.docker.com/engine/reference/commandline/exec/)
    ```sh
    # docker exec [-i] [-t] <CONTAINER> [COMMAND]

    # Run $COMMAND in running container and wait until command ends.
    docker exec -it $CONTAINER $COMMAND
    # Run shell in running container and keep it.
    docker exec -it $CONTAINER $SHELL_NAME(sh, bash, zsh)
    ```
- [docker logs](https://docs.docker.com/engine/reference/commandline/logs/)
- [docker login](https://docs.docker.com/engine/reference/commandline/login/)

Docker Compose
--------------
- [docker-compose ps](https://docs.docker.com/compose/reference/ps/)
- [docker-compose up](https://docs.docker.com/compose/reference/up/)
    ```sh
    # docker-compose up [-d] [--build]

    # Start containers in background.
    docker-compose up -d

    # Always build image(no matter image exists) and start containers.
    docker-compose up --build
    ```
- [docker-compose down](https://docs.docker.com/compose/reference/down/)
- [docker-compose start](https://docs.docker.com/compose/reference/start/)
- [docker-compose restart](https://docs.docker.com/compose/reference/restart/)
- [docker-compose stop](https://docs.docker.com/compose/reference/stop/)
- [docker-compose logs](https://docs.docker.com/compose/reference/logs/)
- [docker-compose exec](https://docs.docker.com/compose/reference/exec/)
- [docker-compose build](https://docs.docker.com/compose/reference/build/)
