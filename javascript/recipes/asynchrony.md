Asynchrony
==========

Promise
-------

### - Producer

```javascript
/**
 * Promise
 * Execute executer function right away after creation.
 * Call resolve() when succed.
 * Call reject() when failed.
 */
const promiseObject = new Promise((resolve, reject) => {
  
  // Doing some heavy work ...

  if (resultData) {
    resolve(resultData);
  } else {
    reject(new Error());
  }
});
```

### - Consumer

```javascript
/**
 * then
 * Called when promise succeeds(resolve) or previous then succeeds.
 * In chaining, then method receives result of previous then method.
 */
promiseObject
  .then((resultData) => {
    // Something to do with resultData
  })
  .then((anotherResultData) => {
    // Something to do with anotherResultData
  });

/**
 * catch
 * Called when failed in any part before catch method.
 * Receives the error object of failed location.
 */
promiseObject
  .then((resultData) => {
    // Something to do with resultData
  })
  .catch((error) => {
    // Something to do with error
  });

/**
 * finally
 * Always executed regardless of success or failure.
 */
promiseObject
  .then((resultData) => {
    // Something to do with resultData
  })
  .catch((error) => {
    // Something to do with error
  })
  .finally(() => {
    // Something to do in the end
  });
```

async & await
-------------

### - async
```javascript
/**
 * async
 * Define async function.
 * Put 'async' keyword in front of 'function' keyword.
 */
async function asyncFunction {
    // Do asynchronous work ...
}

// async in arrow function.
const asyncFunction = async () => {
    // Do asynchronous work ...
}
```

### - await
```javascript
/**
 * await
 * Used to wait Promise object.
 * Can only be used in async function.
 * Put 'await' keyword in front of function call that returns Promise.
 */
async function asyncFunction {
    const result = await promiseFunction();
    // ...
}
```