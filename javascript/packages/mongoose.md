Mongoose Cookbook
=================

Install
-------
```sh
npm install mongoose
```

Import
------
```js
// CommonJS
const mongoose = require('mongoose')
```
```js
// ES6
import mongoose from 'mongoose';
```

Check Connection
----------------
```js
// Listen for error event on the connection.
mongoose.connection.on('error', (err) => {
  console.error('Connection Error !', err);
});
```

Get Schema Class
----------------
```js
const { Schema } = mongoose;
```

Compile Model
-------------
```js
mongoose.model('ModelName', modelSchema);
```

Mongoose API
============

Mongoose
--------
- [Mongoose](https://mongoosejs.com/docs/api/mongoose.html#mongoose_Mongoose)
    ```js
    // [CONSTRUCTOR] mongoose.Mongoose() -> ?
    // Mongoose constructor.
    // The exports object of the mongoose module is an instance of this class.
    ```
- [Mongoose.prototype.set](https://mongoosejs.com/docs/api/mongoose.html#mongoose_Mongoose-set)
    ```js
    // [METHOD] Mongoose.set(key, value) -> ?
    // Sets mongoose options.
    ```
- [Mongoose.prototype.connect](https://mongoosejs.com/docs/api/mongoose.html#mongoose_Mongoose-connect)
    ```js
    // [METHOD] Mongoose.connect(uri, options, callback) -> void
    // [METHOD] Mongoose.connect(uri, callback) -> void
    // [METHOD] Mongoose.connect(uri, options?) -> Promise<Mongoose>
    // Opens mongoose connection.
    ```
- [Mongoose.prototype.model](https://mongoosejs.com/docs/api/mongoose.html#mongoose_Mongoose-model)
    ```js
    // [?] Mongoose.model(name, schema?) -> ?
    // Define a model.
    ```

Schema
------
- [Schema](https://mongoosejs.com/docs/api/schema.html#schema_Schema)
    ```js
    // [CONSTRUCTOR] Schema() -> ?
    // Schema constructor.
    ```
- [Schema.Types](https://mongoosejs.com/docs/api/schema.html#schema_Schema.Types)
    ```js
    // [PROPERTY] Schema.Types
    // The various built-in Mongoose Schema Types.

    // Get 'ObjectId' type.
    const ObjectId = mongoose.Schema.Types.ObjectId;
    ```

Model
-----
- [Model.create](https://mongoosejs.com/docs/api/model.html#model_Model.create)
    ```js
    // [METHOD] Model.create(docs) -> ?
    // Save one or more documents.
    ```
- [Model.remove](https://mongoosejs.com/docs/api/model.html#model_Model.remove)
    ```js
    // [METHOD] Model.remove(filter) -> ?
    // Removes all documents that match conditions from the collection. 
    ```
- [Model.find](https://mongoosejs.com/docs/api/model.html#model_Model.find)
    ```js
    // [METHOD] Model.find() -> ?
    // [METHOD] Model.find(filter) -> ?
    // Finds documents.
    ```
- [Model.update](https://mongoosejs.com/docs/api/model.html#model_Model.update)
    ```js
    // [METHOD] Model.update(filter, update) -> ?
    // Updates one document in the database without returning it.
    ```
- [Model.populate](https://mongoosejs.com/docs/api/model.html#model_Model.populate)
    ```js
    // [METHOD] Model.populate() -> Promise
    // Populates document references.
    ```