YAML Cookbook
=============

Structures
----------
- comment
    ```yaml
    # This is comment.
    ```
- indent
    ```yaml
    # Indent by 2. (recommended)
    services:
    db:
        image: redis

    # Indent by 4
    services:
        db:
            image: redis
    ```
- map
    ```yaml
    # key: value
    # There must be space between ':' and 'value'.

    apiVersion: v1
    kind: Pod
    ```
- array
    ```yaml
    # Use '-' for array.

    # 2 items in 1 array.
    skills:
    - docker
    - k8s
    ```
- string
    ```yaml
    # String can be used without quotation mark(").

    # If string includes ':', quotation mark is needed.
    path: "c:"
    ```
- number
    ```yaml
    # Integers and real numbers are recognized as number.

    # If used with quotation mark, it is recognized as string.
    version: "1.2"
    ```
- boolean
    ```yaml
    # 'true', 'false' can be used.
    # 'yes', 'no' can also be used.
    ```