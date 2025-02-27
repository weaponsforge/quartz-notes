---
title: Merging trees/branches
description:
date: 2018-04-17
time: 2025-02-27T22:45:00
aliases:
tags:
draft:
---
## Merge

**Basic command**
- Navigate to project directory
- git merge [branch_name]

**Reset the from the official merge**
- git reset --merge

**Merge without committing (for review)**
- git merge --no-commit <branch_name>

**Reset from the --no-commit merge**
- git reset --hard
- (automatically resets to last HEAD)

**Merge forcibly taking the other branch's updates**
- git merge <branch_name> --strategy-option  **theirs** | ours

## Pull

**Pull the latest changes from the remote forcibly accepting all remote (theirs) changes** to avoid conflict. If you truly want to discard the commits you've made locally, i.e. never have them in the history again, you're not asking how to pull - pull means merge, and you don't need to merge. All you need do is this:

```bash
git fetch
git reset --hard origin/master
```

If on the other hand, you want to keep those commits and make it look as though you merged with origin, and cause the merge to keep the versions from origin only, you can use the ours merge strategy:

```bash
# fetch from the default remote, origin
git fetch
# create a branch at your current master
git branch old-master
# reset to origin's master
git reset --hard origin/master
# merge your old master, keeping "our" (origin/master's) content
git merge -s ours old-master
```

## Merge Protected Branch to Local Branch

> Scenario: `dev` is a protected main branch and `my-branch` is a local WIP branch

(from gitlab)

- Fetch and check out the branch for this merge request

```bash
git fetch origin
git checkout -b "dev" "origin/dev"
```

- Review the changes locally

- Merge the branch and fix any conflicts that come up

```bash
git fetch origin
git checkout "origin/my-branch"
git merge --no-ff "dev"
```

- Push the result of the merge to GitLab
`git push origin "my-branch"`

### References

- [[git/index|Git]]
