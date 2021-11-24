Docker CLI
==========

- [docker build](https://docs.docker.com/engine/reference/commandline/build/)
    ```sh
    ## docker build [-f] [-t] <path>
    # Directory of path must have Dockerfile.

    # Build image of <dockerfile_path> in <path>.
    # Default is 'PATH/Dockerfile'.
    docker build -f <dockerfile_path> <path>

    # Build and give a name(tag) for new image.
    docker build -t <tag> <path>
    ```
- [docker commit](https://docs.docker.com/engine/reference/commandline/commit/)
    ```sh
    ## docker commit <container> [repository[:tag]]
    ```
- [docker cp](https://docs.docker.com/engine/reference/commandline/cp/)
- [docker create](https://docs.docker.com/engine/reference/commandline/create/)
- [docker exec](https://docs.docker.com/engine/reference/commandline/exec/)
    ```sh
    ## docker exec [-i] [-t] <container> [command]

    # Run <command> in running container and wait until command ends.
    docker exec -it <container> <command>
    # Run shell in running container and keep it.
    docker exec -it <container> <shell(sh, bash, zsh)>
    ```
- [docker images](https://docs.docker.com/engine/reference/commandline/images/)
    ```sh
    ## docker images [-q]

    # Show only image IDs.
    docker images -q
    ```
- [docker inspect](https://docs.docker.com/engine/reference/commandline/inspect/)
- [docker kill](https://docs.docker.com/engine/reference/commandline/kill/)
- [docker login](https://docs.docker.com/engine/reference/commandline/login/)
- [docker logs](https://docs.docker.com/engine/reference/commandline/logs/)
- [docker network](https://docs.docker.com/engine/reference/commandline/network/)
    - [docker network connect](https://docs.docker.com/engine/reference/commandline/network_connect/)
    - [docker network create](https://docs.docker.com/engine/reference/commandline/network_create/)
    - [docker network disconnect](https://docs.docker.com/engine/reference/commandline/network_disconnect/)
    - [docker network inspect](https://docs.docker.com/engine/reference/commandline/network_inspect/)
    - [docker network ls](https://docs.docker.com/engine/reference/commandline/network_ls/)
- [docker ps](https://docs.docker.com/engine/reference/commandline/ps/)
    ```sh
    ## docker ps [-a] [-q]

    # Show all containers.
    docker ps -a

    # Show only container IDs.
    docker ps -q
    ```
- [docker pull](https://docs.docker.com/engine/reference/commandline/pull/)
- [docker push](https://docs.docker.com/engine/reference/commandline/push/)
- [docker restart](https://docs.docker.com/engine/reference/commandline/restart/)
- [docker rm](https://docs.docker.com/engine/reference/commandline/rm/)
- [docker rmi](https://docs.docker.com/engine/reference/commandline/rmi/)
- [docker run](https://docs.docker.com/engine/reference/commandline/run/)
    ```sh
    ## docker run [-d] [-e] [-i] [-p] [-P] [-t] [-v] [-w] [--name] [--network] [--rm] <image> [command]
    # docker run = docker create + docker start.

    # Run container executing <command>, overriding default command(CMD in Dockerfile).
    docker run <image> <command>

    # Run container setting environment variables.
    docker run -e ENV_VAR=env_var <image>

    # Run container executing <command> and wait until command ends.
    docker run -it <image> <command>

    # Run container and map <host_port> to <container_port>.
    docker run -p <host_port>:<container_port> <image>

    # Mount hosts' <host_dir> to containers' <container_dir>.
    docker run -v <host_dir>:<container_dir> <image>

    # Set working directory to <workdir_path>.
    docker run -w <workdir_path> <image>.

    # Run container connecting container to <network>.
    docker run --network=<network> <image>
    ```
- [docker start](https://docs.docker.com/engine/reference/commandline/start/)
    ```sh
    ## docker start [-a] [-i] <container>

    # Attach STDOUT/STDERR.
    docker start -a <container>

    # Attach container's STDIN.
    docker start -i <container>
    ```
- [docker stop](https://docs.docker.com/engine/reference/commandline/stop/)
- [docker system](https://docs.docker.com/engine/reference/commandline/system/)
    - [docker system prune](https://docs.docker.com/engine/reference/commandline/system_prune/)
- docker volume
    - [docker volume prune](https://docs.docker.com/engine/reference/commandline/volume_prune/)
        ```sh
        ## docker volume prune
        # Remove all unused local volumes.
        ```