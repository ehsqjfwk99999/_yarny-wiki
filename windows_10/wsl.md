WSL Cookbook
============

Set Home Directory
------------------
```jsonc
{
    # Default starting path.
    "startingDirectory" : "%USERPROFILE%",
    "startingDirectory" : "C:\Users\<Username>",
    
    # Set starting path to WSL home.
    "startingDirectory" : "//wsl$/<Profile Name>/home/<Username>"
}
```