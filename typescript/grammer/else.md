TypeScript Grammer - Else
=========================

Function
--------

### - Optional Parameter

```typescript
// Make parameter optional by adding '?' at the end of parameter.
function someFunction(optionalParameter?: string) {
    ...
}
```

Class
-----

```typescript
/**
 * TBD ...
 */
class SomeClass {
    // Class member should be declared on the top.
    property_1: string;
    property_2: number;
    ...

    constructor() {
        ...
    }
}
```

Generic
-------

```typescript
/**
 * Function
 */
function someGenericFunction<T>(arg: T): T {
    ...
}

/**
 * Class
 */
class SomeGenericClass<T> {
    ...
}
```

Enums
-----

### - Numeric enums

```typescript
/**
 * Define set of named constants that has a value of number.
 * Value will start from 0 if not initialized.
 * Value is auto-incremented by 1.
 */
enum Numbers {
    Zero = 0,
    One,
    Two,
    ...
}
```

### - String enums

```typescript
/**
 * Define set of named constants that has a value of string.
 * Each member has to be initialized.
 */
enum Directions {
    Up = 'UP',
    Down = "DOWN",
    Left = "LEFT",
    Right = "RIGHT",
}
```

### - Using enums

```typescript
function usingEnumFunction(enumValue: Numbers) {
    if (enumValue === Numbers.Zero) {
        console.log('Zero');
    }
    else if (enumValue === Numbers.One) {
        console.log('One');
    }
    ...
}
```