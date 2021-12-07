Node.js Module : assert
=======================

Import
------
- Strict Assertion Mode
    ```js
    const assert = require('assert/strict');
    ```
    ```js
    import assert from 'assert/strict';
    ```
    ```js
    const assert = require('assert').strict;
    ```
    ```js
    import { strict as assert } from 'assert';
    ```
- Legacy Assertion Mode
    ```js
    const assert = require('assert');
    ```
    ```js
    import assert from 'assert';
    ```

assert API
==========

Functions
---------
- [assert.equal](https://nodejs.org/api/assert.html#assertequalactual-expected-message)
    ```js
    /**
     * [FUNCTION] assert.equal() -> ?
     * @param actual
     * @param expected
     * Test if value is truthy.
     */
    ```
- [assert.ok](https://nodejs.org/api/assert.html#assertokvalue-message)
    ```js
    /**
     * [FUNCTION] assert.ok() -> ?
     * @param value
     * Test if value is truthy.
     */
    ```
- [assert.strictEqual](https://nodejs.org/api/assert.html#assert_assert_strictequal_actual_expected_message)
    ```js
    // [FUNCTION] assert.strictEqual(actual, expected[, message]) -> ?
    ```