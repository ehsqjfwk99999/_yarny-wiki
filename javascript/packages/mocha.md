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
# Test files in 'test' directory. (default)
mocha
```

Example
-------
```js
// Hook to run before each test cases.
beforeEach(() => { ... });

// Group test cases.
describe('Test Group 1',  () => {
    // Test each test cases.
    it('Test Case 1', () => { ... });
    it('Test Case 2', () => { ... });
});
```
