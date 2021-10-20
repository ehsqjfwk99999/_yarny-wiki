YAML Cookbook
=============

Structures
----------
- Comment
    ```yaml
    # This is comment.
    ```
- Dashes (`---`)    
    - Indicate the start of a document.
    - Seperate multiple yaml document in one yaml file.
- Indent
    - Indent by 2. (recommended)
        ```yaml
        services:
          db:
            image: redis
        ```
    - Indent by 4.
        ```yaml
        services:
            db:
                image: redis
        ```
- Map
    ```yaml
    ## <key>: <value>
    # There must be space between ':' and 'value'.

    apiVersion: v1
    ```
- Array
    ```yaml
    # Use '-' for array.

    # 2 items in 1 array.
    skills:
      - docker
      - k8s
    ```
- String
    ```yaml
    # String can be used without quotation mark(").

    # With quotation mark.
    path: "./this.yaml"
    # Without quotation mark.
    path: ./this.yaml

    # If string includes ':', quotation mark is needed.
    path: "c:"
    ```
- Number
    ```yaml
    # Integers and real numbers are recognized as number.

    # Integer.
    version: 1
    # Real Number.
    version: 1.2

    # If used with quotation mark, it is recognized as string.
    version: "1.2"
    ```
- Boolean
    ```yaml
    # 'true', 'false', 'yes', 'no' can be used.

    # Capitalization doesn't matter.
    verbose: True
    auto: FALSE
    ```