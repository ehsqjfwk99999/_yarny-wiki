Javascript Language Reference : Error Handling
==============================================

Structures
----------
- try ... catch
    ```js
    try {
      ...
    } catch (error) {
      ...
    }
    ```
- try ... catch ... finally
    ```js
    try {
      ...
    } catch (error) {
      ...
    } finally {
      ...
    }
    ```

catch
-----
- `catch` statement gets `Error` object.

finally
-------
- `finally` statement is always executed.
- Sequence
    - `try` -> `finally`
    - `try` -> `catch` -> `finally`

throw
-----
- `throw` statement throws a user-defined exception.
```js
// throw <expression>

throw new Error('No space to add')
```