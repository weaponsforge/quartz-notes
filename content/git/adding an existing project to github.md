---
title: Adding an Existing Project to GitHub Using the Command Line
description: 
date: 2018-04-03
time: 2025-02-27T22:12:00
aliases: 
tags: 
draft:
---
**Note: Never _push_ or _commit_ sensitive information to a remote repository.** Sensitive information can include, but is not limited to:

- passwords
- SSH keys
- AWS access keys
- API keys
- Credit card numbers
- PIN numbers

**Steps**

- Create new a repository in GitHub
- Open Git Bash
- Change the current working directory to your local project
- Initialize the local directory as a Git respository
    `git init`
- Add the new files in your local repository. This _stages_ them for the first commit.

```bash
git add .
# Adds the files in the local repository and stages them for commit. To unstage a file, use 'git reset HEAD YOUR-FILE'.
```

- Commit the files that you've staged in your local repository.

```bash
git commit -m "First commit"
# Commits the tracked changes and prepares them to be pushed to a remote repository. To remove this commit and modify the file, use 'git reset --soft HEAD~1' and commit and add the file again.
```

- At the top of your GitHub repository's Quick Setup page, click  to copy the remote repository URL.
- In the Command prompt, add the URL for the remote repository where your local repository will be pushed.

```bash
git remote add origin **remote repository URL**
# Sets the new remote
git remote -v
# Verifies the new remote URL
```

- Pull from the remote repository if your local project was initialized for the first time
    `git pull origin master`

- Push the changes in your local repository to GitHub.

```bash
git push origin master
# Pushes the changes in your local repository up to the remote repository you specified as the origin
```

### References

- [[git/index|Git]]
- [Adding locally hosted code to GitHub](https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/)
- [Pushing commits to a remote repository](https://help.github.com/articles/pushing-to-a-remote/)
