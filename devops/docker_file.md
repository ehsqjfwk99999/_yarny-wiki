Docker File
===========

Configuration Files
------------------
- Dockerfile
- Dockerfile.dev

Instructions
------------
- [FROM](https://docs.docker.com/engine/reference/builder/#from)
	```dockerfile
	# FROM <image> [AS <stage>]
	# Set base image.

	FROM node:alpine
	```
- [RUN](https://docs.docker.com/engine/reference/builder/#run)
	```dockerfile
	# RUN ["<executable>", "<param_1>", "<param_2>", ... ]
	# Create new layer on top of current image.

	RUN ["apt", "install", "git"]
	``````
- [CMD](https://docs.docker.com/engine/reference/builder/#cmd)
	```dockerfile
	# CMD ["<executable>", "<param_1>", "<param_2>", ... ]
	# Set default command for container.

	CMD ["node", "server.js"]
	```
- [ADD](https://docs.docker.com/engine/reference/builder/#add)
	```dockerfile
	# ADD <src> <dest>
	# Copies files or directories and adds them in container.
	```
- [COPY](https://docs.docker.com/engine/reference/builder/#copy)
	```dockerfile
	# COPY [--from=<stage>] <src> <dest>
	# Copies local files or directories to container.

	COPY . /app
	```
- [WORKDIR](https://docs.docker.com/engine/reference/builder/#workdir)
	```dockerfile
	# WORKDIR <path>
	# Set working directory path in container for other instructions.

	WORKDIR /app
	```
- [EXPOSE](https://docs.docker.com/engine/reference/builder/#expose)
	```dockerfile
	# EXPOSE <port>
	```