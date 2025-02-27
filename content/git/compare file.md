---
title: Compare File
description: 
date: 2018-04-11
time: 2025-02-27T22:37:00
aliases: 
tags: 
draft:
---
**See the difference of unstaged file from latest revision**
- `git diff *file_name*`

**See the difference of staged file from latest revision**
- `git diff --cached *file_name*`
- `git diff --staged *file_name*`

**See the difference of committed files from latest [branch_name] HEAD**
- `git diff origin/master..HEAD`

**Vew un-pushed commits from all branches**
- `git log --branches --not --remotes`

### References

- [[git/index|Git]]
