---
title: View Local Staged/Commits
description: 
date: 2018-04-18
time: 2025-02-27T22:41:00
aliases: 
tags: 
draft:
---
- **View staged (added) status**
`git status`

- **View local commits (un-pushed commits)**
`git log origin/[branch_name]..HEAD`

- **update a commit message** (updates are not yet pushed)
   - `git commit --amend`
   - Press `i`. Edit the commit message
   - Save commit message: Press `ESC`. Enter `:wq` and press enter
   - Updated commit message will be pushed on push

### References

- [[git/index|Git]]
