Docker File
===========

Configuration File
------------------
- Dockerfile
- Dockerfile.dev

Instructions
------------
- [FROM](https://docs.docker.com/engine/reference/builder/#from)
	```dockerfile
	# FROM <IMAGE> [AS <STAGE>]
	# Set base image.
	```
- [RUN](https://docs.docker.com/engine/reference/builder/#run)
	```dockerfile
	# RUN <COMMAND>
	# Create new layer on top of current image.

	RUN ["$COMMAND_1", "$COMMAND_2", ...]
	``````
- [CMD](https://docs.docker.com/engine/reference/builder/#cmd)
	```dockerfile
	# CMD <COMMAND>
	# Set default command for container.

	CMD ["$COMMAND_1", "$COMMAND_2", ...]
	```
- [ADD](https://docs.docker.com/engine/reference/builder/#add)
	```dockerfile
	# ADD <SRC> <DEST>
	# Copies files or directories and adds them in container.
	```
- [COPY](https://docs.docker.com/engine/reference/builder/#copy)
	```dockerfile
	# COPY [--from=<STAGE>] <SRC> <DEST>
	# Copies files or directories and adds them in container.
	```
- [WORKDIR](https://docs.docker.com/engine/reference/builder/#workdir)
	```dockerfile
	# WORKDIR <PATH>
	# Set working directory for other instructions.
	```
- [EXPOSE](https://docs.docker.com/engine/reference/builder/#expose)
	```dockerfile
	# EXPOSE <PORT>
	```