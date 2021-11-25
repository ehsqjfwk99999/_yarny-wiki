[dotenv](https://github.com/motdotla/dotenv)
========

Install
-------
```sh
npm install dotenv
```

Import
------
```js
const multer  = require('multer')
```

Example
-------
- `app.js`
    ```js
    // As early as possible.
    require('dotenv').config()

        ...

    const config = {
        host: process.env.DB_HOST,
        username: process.env.DB_USER,
        password: process.env.DB_PASS
    }
    ```
- `.env`
    ```
    DB_HOST=localhost
    DB_USER=root
    DB_PASS=s1mpl3
    ```