VS Code Extention : REST Client
===============================

Files
-----
- `.http`

Features
--------
- Comment by `#` or `//`.
- Multiple requests in the same file can be seperated by `###` delimiter.

HTTP Request
------------
- Request Line
    ```
    GET http:localhost:5000
    ```
- Request Headers
    ```
    # Lines right after request line to first empty line is considered request headers.
    
    POST http:localhost:5000
    Content-Type: application/json
    ```
- Request Body
    ```
    # Add blank after request line.

    POST http:localhost:5000

    {
      "this": {
        "is": "json"
      }
    }
    ```