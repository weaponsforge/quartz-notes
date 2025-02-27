---
title: Syncing a Fork/Keeping a Fork Updated
description: 
date: 2018-11-19
time: ""
aliases: 
tags: 
draft:
---
## Configure a remote that points to the original upstream repository

1. Open GitBash.
2. List your fork's current configured remote repository:
   `git remote -v`
3. Add a new remote *upstream* repository that will be synced with the fork.
   `git remote add upstream <ORIGINAL_REMOTE_REPOSITORY>`

## Sync your fork

1. Open GitBash
2. Clone your fork, or change the current working directory to your local (cloned) project.
3. Fetch the latest updates from the original upstream source:
   `git fetch upstream`
4. Checkout your fork's master branch
   `git checkout master`
5. Merge the changes from `upstream/master` into your local master branch. This brings your fork's `master` branch into sync with the upstream repository, *without losing your local changes.*
   `git merge upstream/master`
6. To merge and force update your fork with the latest changes, do:
   `git pull upstream master`

### References

- [[git/index|Git]]
