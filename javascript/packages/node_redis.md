Node Redis
==========

Install
-------
```sh
npm install redis
```

Import
------
```javascript
const redis = require('redis')
```

Node Redis API
==============

redis
-----
- [redis.createClient](https://github.com/NodeRedis/node-redis#rediscreateclient)
    ```javascript
    /*
     * [FUNCTION] redis.createClient([options])
     * [FUNCTION] redis.createClient(port[, host][, options])
     * Create Redis client.
     */

    // Create client to Redis server at '127.0.0.1:6379'.
    redis.createClient();
    redis.createClient(6379);
    redis.createClient(6379, '127.0.0.1');

    // options object.
    options = {
        host: '127.0.0.1',
        port: 6379
    }

    ```
client
------
- client.on
    ```javascript
    /**
     * [METHOD] client.on
     * Register callback on client.
     */
    
    client.on('error', (error));
    ```
- client.set
    ```javascript
    /**
     * [METHOD] client.set
     * Set key to string value.
     */
    
    client.on('error', (error) => {
        console.log('Redis Client Error !');
    });

    // client events.
    // => error, ready, connect, end
    ```
- client.get
    ```javascript
    /**
     * [METHOD] client.get
     * Get the value of the key.
     * Callback needed to get data from server.
     */
    
    client.get('key', (err, value)=>{
        console.log(value);
    });
    ```
- [client.quit](https://github.com/NodeRedis/node-redis#clientquitcallback)