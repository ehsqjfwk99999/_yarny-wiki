TypeScript Grammer
==================

Types
-----

```typescript
/**
 * any
 * Represents every type.
 */
let anyVariable: any = 'Can be everything';

/**
 * void
 * Represents return value of functions which don’t return a value.
 */
function someFunction( ... ): void {
    ...
}
```
```typescript
/**
 * boolean
 * Represents boolean values, true and false.
 */
let booleanVariable: boolean = true;

/**
 * string
 * Represents string values.
 */
let stringVariable: string = 'String variable';

/**
 * number
 * Represents number values.
 * No int or float, everything is number.
 */
let numberVariable: number = 123;
```
```typescript
/**
 * Array
 * Represents array type.
 */
let arrayVariable: number[] = [1, 2, 3];
let arrayVariable: Array<number> = [1, 2, 3];

/**
 * Tuple
 * Represents array with type of elements known.
 */
let tupleVariable: [string, number] = ['Some string', 123];

/**
 * object
 * Represents object type.
 */
let objectVariable: object = { ... };
let objectVariable: { property_1: string, property_2: number } = {
    property_1: 'Some string',
    property_2: 123
};
```

Type Annotation
---------------

### - Variable

```typescript
/**
 * Variable type annotation.
 * Add type behing variable.
 */
const someVariable: string = 'Some string';
```

### - Function

```typescript
/**
 * Parameter type annotation.
 * Add type behind parameter.
 */
function someFunction(parameter_1: string, parameter_2: number, ...) {
    ...
}

/**
 * Return type annotation.
 * Add type behind parameter declaration.
 */
function someFunction( ... ): number {
    ...
    return 123;
}
```

Function
--------

### - Optional Parameter

```typescript
// Make parameter optional by adding '?' at the end of parameter.
function someFunction(optionalParameter?: string) {
    ...
}
```

Interface
---------

### - Declaration

```typescript
// Object type.
interface objectInterface {
    property_1: string;
    property_2: number;
    ...
}

// Function type.
interface functionInterface {
    (parameter_1: string, parameter_2: number, ...): boolean;
}
```

### - Optional Property

```typescript
// Make property optional by adding '?' at the end of property.
interface objectInterface {
    optionalProperty?: number;
    normalProperty: string;
    ...
}
```

### - Extension(Inheritance)

```typescript
// Extend interface by extends keyword.
interface newInterface extends superInterface{
    newProperty: boolean
    ...
}
```

Type Alias
----------

### - Declaration

```typescript
// Using basic types.
type newType = string;

// Using object types.
type newType = {
    property_1: string;
    property_2: number;
    ...
}
```