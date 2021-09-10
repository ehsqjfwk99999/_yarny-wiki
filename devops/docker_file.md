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
	# FROM <image> [AS <stage>]
	# Set base image.
	```
- [RUN](https://docs.docker.com/engine/reference/builder/#run)
	```dockerfile
	# RUN <command>
	# Create new layer on top of current image.

	RUN ["<command_1>", "<command>_2", ...]
	``````
- [CMD](https://docs.docker.com/engine/reference/builder/#cmd)
	```dockerfile
	# CMD <command>
	# Set default command for container.

	CMD ["<command_1>", "<command>_2", ...]
	```
- [ADD](https://docs.docker.com/engine/reference/builder/#add)
	```dockerfile
	# ADD <src> <dest>
	# Copies files or directories and adds them in container.
	```
- [COPY](https://docs.docker.com/engine/reference/builder/#copy)
	```dockerfile
	# COPY [--from=<stage>] <src> <dest>
	# Copies files or directories and adds them in container.
	```
- [WORKDIR](https://docs.docker.com/engine/reference/builder/#workdir)
	```dockerfile
	# WORKDIR <path>
	# Set working directory path in container for other instructions.
	```
- [EXPOSE](https://docs.docker.com/engine/reference/builder/#expose)
	```dockerfile
	# EXPOSE <port>
	```