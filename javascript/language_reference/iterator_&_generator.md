Javascript Language Reference : Iterator & Generator
====================================================

Iterable
--------
```javascript
// An object that have or inherit 'Symbol.iterator' method.
// 'Symbol.iterator' method returns an iterator.

const iterable = {
    [Symbol.iterator]() {
        ...
    }
};
```

Iterator
--------
```javascript
// Has next method that returns iterator result object.
// Iterator result object has value, done property.
// 'Symbol.iterator' method inside iterator returns itself.

[Symbol.iterator]() {
    ...
    return {
        next() {       
            ...
            return { value: someValue, done: trueOrFalse };
        }
        [Symbol.iterator]() { return this; }
    };
}
```

Generator
---------
```javascript
// Function that returns iterable which is also iterator.

function* generator_func() {
    yield 1;
    yield 2;
    yield 3;
}

// Returns iterable.
for (const n of generator_func()) {
    console.log(n);
}
```
