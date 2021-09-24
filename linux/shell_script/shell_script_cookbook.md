Shell Script Cookbook
=====================

shebang line
------------
| Interpreter | shebang line |
|:-----------:|:------------:|
| Bash | `#!/bin/bash` or `#!/usr/bin/env bash` |
| Python3 | `#!/usr/bin/env python3` |

`sh` vs `source`
----------------
| Command | Action |
|:-------:|:------:|
| `sh <script>` | Execute script in forked shell(`/bin/sh`). |
| `source <script>` | Execute script in current shell. |

Change `/bin/sh` from `dash` to `bash`
--------------------------------------
```sh
sudo dpkg-reconfigure dash
```