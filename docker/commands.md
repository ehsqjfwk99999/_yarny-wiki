Docker Commands
===============

Docker Commands
---------------

- [docker version](https://docs.docker.com/engine/reference/commandline/version/)
- [docker images](https://docs.docker.com/engine/reference/commandline/images/)
```sh
# Show images.
docker images

# Show only image IDs.
docker images -q
```
- [docker ps](https://docs.docker.com/engine/reference/commandline/ps/)
```sh
# Show running containers.
docker ps

# Show all containers.
docker ps -a

# Show only container IDs.
docker ps -q
```
- [docker run](https://docs.docker.com/engine/reference/commandline/run/)
```sh
# docker run = docker create + docker start.

# Run new container.
docker run $IMAGE

# Run container executing $COMMAND, overriding CMD in Dockerfile.
docker run $IMAGE $COMMAND

# Run container in background.
docker run -d $IMAGE

# Run container and give name $NAME.
docker run --name $NAME $IMAGE

# Run container and map PORT_HOST to $PORT_CONTAINER.
docker run -p $PORT_HOST:$PORT_CONTAINER $IMAGE

# Run container executing $COMMAND and wait until command ends.
docker run -it $IMAGE $COMMAND
```
- [docker create](https://docs.docker.com/engine/reference/commandline/create/)
- [docker start](https://docs.docker.com/engine/reference/commandline/start/)
```sh
# Start stopped container(s).
docker start $CONTAINER ...

# ?????
docker start -a $CONTAINER

# ?????
docker start -i $CONTAINER
```
- [docker pull](https://docs.docker.com/engine/reference/commandline/pull/)
- [docker build](https://docs.docker.com/engine/reference/commandline/build/)
```sh
# Directory of path must have Dockerfile.

# Build image of $DOCKERFILE_PATH.
docker build $DOCKERFILE_PATH

# Build image and give a name(tag) for new image.
docker build -t $TAG $DOCKERFILE_PATH

# Build image of $DOCKERFILE_NAME in $DOCKERFILE_PATH.
# Default is 'PATH/Dockerfile'.
docker build -f $DOCKERFILE_NAME $DOCKERFILE_PATH
```
- [docker stop](https://docs.docker.com/engine/reference/commandline/stop/)
- [docker kill](https://docs.docker.com/engine/reference/commandline/kill/)
- [docker rm](https://docs.docker.com/engine/reference/commandline/rm/)
- [docker rmi](https://docs.docker.com/engine/reference/commandline/rmi/)
- [docker system prune](https://docs.docker.com/engine/reference/commandline/system_prune/)
- [docker exec](https://docs.docker.com/engine/reference/commandline/exec/)
```sh
# Run $COMMAND in running container and exit.
docker exec $CONTAINER $COMMAND

# Run $COMMAND in running container and wait until command ends.
docker exec -it $CONTAINER $COMMAND
# Run shell in running container and keep it.
docker exec -it $CONTAINER $SHELL_NAME(sh, bash, zsh)
```

Docker Compose Commands
-----------------------

- docker compose version
- [docker compose up](https://docs.docker.com/compose/reference/up/)
```sh
# Start containers.
docker-compose up

# Start containers in background.
docker-compose up -d

# Build image and start containers.
docker-compose up --build
```
- [docker compose down](https://docs.docker.com/compose/reference/down/)