Mocha Cookbook
==============

Install
-------
```sh
npm install mocha
```

Run Test
--------
```sh
mocha
```

Structure
---------
```js
// Hook to run before each test cases.
beforeEach(() => { ... });

// For grouping test cases.
describe('Test Group 1',  () => {
    // Each test case.
    it('Test Case 1', () => { ... });
    it('Test Case 2', () => { ... });
});
```
