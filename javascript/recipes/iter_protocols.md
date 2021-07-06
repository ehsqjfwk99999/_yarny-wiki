Iteration Protocols
===================

Iterable Protocol
-----------------

### - Iterable

- An object that have or inherit Symbol.iterator method.
```javascript
const iterable = {
    [Symbol.iterator]() {
        ...
    }
};
```

### - Symbol.iterator Method

- Returns iterator.

Iterator Protocol
-----------------

### - Iterator

- Has next method that returns iterator result object.
- Iterator result object has value, done property.
```javascript
[Symbol.iterator]() {
    
    ...

    return {
        next() {
            
            ...

            return {
                value: someValue,
                done: trueOrFalse
            };
        }
    };
}
```

Usages
------

- for ... of
- Spread Operator