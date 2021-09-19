Docker Compose CLI
==================

- [docker-compose build](https://docs.docker.com/compose/reference/build/)
- [docker-compose down](https://docs.docker.com/compose/reference/down/)
- [docker-compose exec](https://docs.docker.com/compose/reference/exec/)
- [docker-compose logs](https://docs.docker.com/compose/reference/logs/)
- [docker-compose ps](https://docs.docker.com/compose/reference/ps/)
- [docker-compose restart](https://docs.docker.com/compose/reference/restart/)
- [docker-compose start](https://docs.docker.com/compose/reference/start/)
- [docker-compose stop](https://docs.docker.com/compose/reference/stop/)
- [docker-compose up](https://docs.docker.com/compose/reference/up/)
    ```sh
    # docker-compose up [-d] [--build]

    # Start containers in background.
    docker-compose up -d

    # Always build image(no matter image exists) and start containers.
    docker-compose up --build
    ```