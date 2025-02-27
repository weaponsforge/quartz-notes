---
title: Rename a Branch
description:
date: 2019-08-31
time: 2025-02-27T22:55:00
aliases:
tags:
draft:
---
- **rename a local branch** - must be currently in the branch to rename
git branch -m new-name

- **Delete the old-name remote branch and push the new-name local branch.**
git push origin :old-name new-name

- **Reset the upstream branch for the new-name local branch.** - switch to the branch
git push origin -u new-name

**shortcut**

```bash
git branch -m old_branch new_branch         # Rename branch locally
git push origin :old_branch                 # Delete the old branch
git push --set-upstream origin new_branch   # Push the new branch, set local branch to track the new remote
```

### References

- [[git/index|Git]]
