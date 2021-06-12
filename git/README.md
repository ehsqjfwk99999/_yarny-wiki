Git Commands
============

Table of Contents
-----------------

- [git](#git)
- [git status](#git-status)
- [git add](#git-add)
- [git commit](#git-commit)
- [git log](#git-log)
- [git branch](#git-branch)
- [git checkout](#git-checkout)
- [git remote](#git-remote)
- [git push](#git-push)
- [git pull](#git-pull)
- [git clone](#git-clone)

## git

```sh
# Show manual page.

git --help
```
```sh
# Show version.

git --version
```

## git status

```sh
# Show the working tree status.

git status
```

## git add

```sh
# Add file contents to the index.

git add $FILE_NAME

# Add all files.
git add .
```

## git commit

```sh
# Record changes to the repository.

git commit -m "Commit message"

# Git add + commit.
# Available only for files already added.
git commit -am "Commit message"
```

## git log

```sh
# Show commit logs.

git log
```

## git branch

```sh
# Show all branches.
git branch
```

## git checkout

```sh
# Switch branch.

git checkout $BRANCH_NAME
```

## git remote

```sh
# Show remote names.

git remote

# Show remote names and urls.
git remote -v

# Add remote $REMOTE_NAME for $REMOTE_URL.
git remote add $REMOTE_NAME $REMOTE_URL
```

## git push

```sh
# Update remote repository.

git push
```

## git pull

```sh
# Update current branch.

git pull
```

## git clone

```sh
# Clone a remote repository.

git clone $GIT_URL
```