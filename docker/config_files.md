Docker Config Files
===================

Docker File
----------

### - Features

### - Options
- [FROM](https://docs.docker.com/engine/reference/builder/#from)
```dockerfile
FROM $BASE_IMAGE
```
- [RUN](https://docs.docker.com/engine/reference/builder/#run)
```dockerfile
RUN ["$COMMAND_1", "$COMMAND_2", ...]
``````
- [CMD](https://docs.docker.com/engine/reference/builder/#cmd)
```dockerfile
CMD ["$COMMAND_1", "$COMMAND_2", ...]
```
- [COPY](https://docs.docker.com/engine/reference/builder/#copy)
```dockerfile
COPY $SRC_PATH $DEST_PATH
```
- [WORKDIR](https://docs.docker.com/engine/reference/builder/#workdir)
```dockerfile
WORKDIR $WORKDIR_PATH
```

Docker Compose File
-------------------

- docker-compose.yml

```yaml
version: "3"
services:
	$CONTAINER_NAME_1:
		image: $IMAGE
	$CONTAINER_NAME_2:
		build : $BUILD_PATH
		ports:
			- '$PORT_HOST:$PORT_CONTAINER:
```