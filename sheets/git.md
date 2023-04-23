# git

## create 
|
| Command | Description |
| --- | --- |
| `git init` | Initialize a new local Git repository |
| `git clone <repository>` | Create a working copy of a remote repository |
|
## local
|
| Command | Description |
| --- | --- |
| `git status` | Show the working tree status |
| `git diff` | Show changes to tracked files |
| `git add <file>` | Add a file to the staging area |
| `git add .` | Add all new and changed files to the staging area |
| `git commit -m "<message>"` | Commit changes with a message |
|
## branching
|
| Command | Description |
| --- | --- |
| `git branch` | List all local branches |
| `git branch <branch-name>` | Create a new branch |
| `git checkout <branch-name>` | Switch to a branch |
| `git checkout -b <branch-name>` | Create a new branch and switch to it |
| `git merge <branch-name>` | Merge a branch into the active branch |
|
## Remotes
|
| Command | Description |
| --- | --- |
| `git remote add <remote-name> <repository>` | Add a remote repository |
| `git remote -v` | List remote repositories |
| `git fetch <remote-name>` | Fetch changes from a remote repository |
| `git pull <remote-name> <branch-name>` | Fetch and merge changes from a remote branch |
| `git push <remote-name> <branch-name>` | Push local branch changes to a remote repository |
|
## undo
|
| Command | Description |
| --- | --- |
| `git reset <file>` | Unstage a file |
| `git reset` | Reset the staging area to match the most recent commit |
| `git reset --hard` | Discard all working directory changes |
| `git checkout -- <file>` | Discard changes to a file |
| `git revert <commit>` | Create a new commit that undoes changes from a previous commit |
|
## log
|
| Command | Description |
| --- | --- |
| `git log` | Show commit logs |
| `git log --oneline` | Show commit logs in a short format |
| `git blame <file>` | Show who changed each line of a file and when |
|
