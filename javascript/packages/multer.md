[multer](https://github.com/expressjs/multer)
========

Install
-------
```sh
npm install multer
```

Import
------
```js
const multer  = require('multer')
```

Example
-------
```js
const multer  = require('multer')

const upload = multer({
    // options
})

    ...

app.post('/upload', upload.single('photo'), (req, res) => {
    ...
})

app.post('/upload', upload.array('photos'), (req, res) => {
    ...
})

app.post('/upload', upload.fields([{ name: 'photo1' }, { name: 'photo2' }]), (req, res) => {
    ...
})

app.post('/upload', upload.none(), (req, res) => {
    ...
})
```

multer Options
--------------
| Option | Description |
|:------:|:-----------:|
| `dest` | Where to store files. |
| `limits` | Limits of uploaded data. |