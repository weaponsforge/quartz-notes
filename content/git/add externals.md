---
title: Add Externals
description:
date: 2018-04-18
time: 2025-02-27T22:48:00
aliases:
tags:
draft:
---
## Subtree

- **Reference**
  [https://help.github.com/articles/about-git-subtree-merges/](https://help.github.com/articles/about-git-subtree-merges/ "smartCard-inline")
- **Add the new remote**
  git remote add -f _[new\_directory\_name]_ _[remote_url]_
  git remote add -f databases [https://ciatph@bitbucket.org/ciatph/data.git](https://ciatph@bitbucket.org/ciatph/data.git "‌")
- **Merge the remote project into the local Git project**
- git merge -s ours --no-commit --allow-unrelated-histories _[new\_directory\_name]/master_
- git merge -s ours --no-commit --allow-unrelated-histories databases/master
- **Create a new directory /databases, copy the Git history of remote**
  git read-tree --prefix=_[directory_name]_/ -u _[directory_name]_/master
  git read-tree --prefix=databases/ -u databases/master
- **Commit the subtree merge**
  git commit -m "Subtree merged in /databases."

---

- **Change the remote url**
  git remote set-url _[remote_name]_ _[new\_remote\_url]_
  git remote set-url origin [https://github.com/ciatph/sqlitemerge.git](https://github.com/ciatph/sqlitemerge.git "smartCard-inline")

## Submodule

1. Add a submodule with target branch (master) to track to a repository

```bash
git submodule add -b master [URL to Git Repo]
git submodule init
git commit -m "Added submodule."
git push
```

1. Clone a repository with a submodule
   `git clone --recursive [URL to Git Repo]`
2. Pull new updates into the submodule

```bash
cd [submodule directory]
git checkout master
git pull
cd ..
git add [submodule directory]
git commit -m "Move submodule to the latest commit in master."
git push
```

1. Pull new updates into the main repository including changes in its submodules (not working quite)
   `git pull --recurse-submodules`
2. Pull all changes for the submodules (alternative for #3)
   - `git submodule update --remote`
   - if you pull in new changes into the submodules, you need to create a new commit in your main repository in order to track the updates of the nested submodules.
3. Execute git commands on every submodule. i.e., (reset all submodules)
   `git submodule foreach --recursive 'git reset --hard'`

## References

[[git/index|Git]]

[1](https://www.vogella.com/tutorials/GitSubmodules/article.html), [2](https://www.atlassian.com/git/tutorials/git-submodule), [3](https://www.atlassian.com/git/tutorials/git-submodule) - submodules
[4](https://medium.com/@porteneuve/mastering-git-subtrees-943d29a798ec) - subtree
