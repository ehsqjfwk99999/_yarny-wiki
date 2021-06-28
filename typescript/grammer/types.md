TypeScript Grammer - Types
==========================

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

Union & Intersection Type
-------------------------

### - Union Type

```typescript
/**
 * Define a union type that can be any one of the member of union.
 * Define usin | operator.
 * Union type will have things that will be valid for every member of the union.
 */
type unionType = string | number;
```

### - Intersection Type

```typescript
/**
 * Define a intersection type that combine existing object types.
 * Defined using & operator.
 * Intersection type will have all the members of combined object types.
 */
type intersectionType = interface_1 & interface_2;
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