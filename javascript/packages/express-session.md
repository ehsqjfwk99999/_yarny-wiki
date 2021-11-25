express-session
===============

Install
-------
```sh
npm install express-session
```

Import
------
```js
const session = require('express-session')
```

Example
-------
```js
const session = require('express-session')

// ...

app.use(session({
    // options
}));
```

Options
-------
| Option | Description |
|:------:|:-----------:|
| `cookie` | |
| `name` | |
| `resave` | |
| `saveUninitialized` | |
| `secret` | |