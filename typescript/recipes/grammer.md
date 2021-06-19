TypeScript Grammer
==================

Types
-----

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

Function
--------

```typescript
/**
 * Type Annotations
 * For parameter type and return type.
 */
function functionOne(parameter_1: string, parameter_2: number): number {
    ...
    return 123;
}

/**
 * Optional Parameters.
 * Make parameter optional with '?:'.
 */
function functionOne(parameter_1?: string) {
    ...
}
```