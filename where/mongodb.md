MongoDB Cookbook
================

Setup
-----
- Docker
    ```sh
    docker run mongo
    ```

Run MongoDB
-----------
- Run MongoDB daemon
    ```sh
    mongod
    ```
- Run MongoDB Shell
    ```sh
    # Deprecated.
    mongo
    ```
    ```sh
    mongosh
    ```

Basic Commands
--------------
| Action | Command |
|:------:|:-------:|
| Show current database. | `db` |
| Show all databases. | `show dbs` |
| Switch current database to `<db>`. | `use <db>` |
| Show all collections for current database. | `show collections` |
| Create new collection `name`. | `db.createCollection(name)` |

MongoDB CLI
===========

Collection Methods
------------------
- [db.collection.save](https://docs.mongodb.com/manual/reference/method/db.collection.save/)
    ```sh
    # db.collection.save(document)
    ```
- [db.collection.remove](https://docs.mongodb.com/manual/reference/method/db.collection.remove/)
    ```sh
    # db.collection.remove(query)
    ```
- [db.collection.find](https://docs.mongodb.com/manual/reference/method/db.collection.find/)
    ```sh
    # db.collection.find(query, projection)
    ```
- [db.collection.update](https://docs.mongodb.com/manual/reference/method/db.collection.update/)
    ```sh
    # db.collection.update(query, update)

    # Update only single ?.
    db.collection.update({age: 20}, {$set: {age: 30}})
    ```

Cursor Methods
--------------
- [cursor.limit](https://docs.mongodb.com/manual/reference/method/cursor.limit/)
    ```sh
    # cursor.limit(number)
    ```
- [cursor.skip](https://docs.mongodb.com/manual/reference/method/cursor.skip/)
    ```sh
    # cursor.skip(offset)
    ```
- [cursor.sort](https://docs.mongodb.com/manual/reference/method/cursor.sort/)
    ```sh
    # cursor.sort(sort)
    ```