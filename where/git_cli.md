Git CLI
=======

Git
---
- [git](https://git-scm.com/docs/git)
    ```sh
    # git [--help] [--version]
    ```
- [git init](https://git-scm.com/docs/git-init)
    ```sh
    # git init
    # Create new empty git repository(.git file).
    ```

Monitoring
----------
- [git status](https://git-scm.com/docs/git-status)
    ```sh
    # git status
    # Show the working tree status.
    ```
- [git log](https://git-scm.com/docs/git-log)
    ```sh
    # git log
    # Show commit logs.
    ```

Snapshotting
------------
- [git add](https://git-scm.com/docs/git-add)
    ```sh
    # git add <file>
    # Add file contents to the index.

    # Add all files.
    git add .
    ```
- [git commit](https://git-scm.com/docs/git-commit)
    ```sh
    # git commit [-m]
    # Record changes to the repository.

    # Commit shortcut.
    git commit -m <msg>
    # Git add + commit.
    # Available only for files already added.
    git commit -am <msg>
    ```

Branching
---------
- [git branch](https://git-scm.com/docs/git-branch)
    ```sh
    # git branch
    # Show all branches.

    # git branch <branch>
    # Create new branch
    ```
- [git checkout](https://git-scm.com/docs/git-checkout)
    ```sh
    # git checkout [-b] <branch>
    # Switch branch.

    # Create branch & checkout.
    git checkout -b <branch>
    ```

Remote Related
--------------
- [git clone](https://git-scm.com/docs/git-clone)
    ```sh
    # git clone <url>
    # Clone a remote repository.
    ```
- [git remote](https://git-scm.com/docs/git-remote)
    ```sh
    # git remote [-v|--verbose]
    # Manage remote repositories.

    # Show remote names and urls.
    git remote -v

    # Add remote <url> with name <name>.
    git remote add <name> <url>
    ```
- [git push](https://git-scm.com/docs/git-push)
    ```sh
    # git push [-u|--set-upstream] <remote> <branch>
    # Update remote repository.

    # Push and set upstream reference.
    git push -u <remote> <branch>
    ```
- [git pull](https://git-scm.com/docs/git-pull)
    ```sh
    # git pull
    # Update current branch.
    ```
