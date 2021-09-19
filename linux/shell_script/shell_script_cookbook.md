Shell Script Cookbook
=====================

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