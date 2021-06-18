MongoDB Installation
====================

Install MongoDB
---------------

```sh
sudo apt install mongodb
```

Start mongod
------------

```sh
# Start MongoDB server.

mongod
```
```sh
# If error with /data/db dir.
sudo mkdir -p data/db && sudo chown -R `id -un` data/db

# Start mongod again.
```

Start mongo
-----------

```sh
# Start MongoDB client.

mongo
```