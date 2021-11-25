morgan Cookbook
===============

Install
-------
```sh
npm install morgan
```

Import
------
```js
const morgan = require('morgan');
```

Example
-------
```js
const logger = require('morgan');

// ...

app.use(logger('dev'));
```