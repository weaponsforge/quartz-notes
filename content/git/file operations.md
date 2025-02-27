---
title: File Operations
description: 
date: 2018-04-11
time: 2025-02-27T22:31:00
aliases: 
tags: 
draft:
---
**Remove file from file system and Git**

- `git rm file1.txt`
- `git commit -m "removed file1.txt"`

**Remove file from Git repository only, retain in filesystem**

- `git rm --cached file1.txt`
- `git commit -m "removed file1.txt"`

**Rename a file**

- `git mv \*old\_file\_name \*new\_file\_name`
- `git commit -m "Renamed file"`

**View a file's history log**

- `gitk <filename>`

**View a file's rename history**

- `gitk --follow <filename>`

**Show, list what will be deleted**

- `git clean -n`

**Clean/delete files**

- `git clean -f`

**Remove directories**

- `git clean -f -d`
- `git clean -fd`

**Remove ignored files**

- `git clean -f -X`
- `git clean -fX`

**Remove ignored and non-ignored files**

- `git clean -f -x`
- `git clean -fx`

**Ignore local file updates**

- `git update-index --assume-unchanged <filename>`

**Revert/start tracking of ignored local files**

- `git update-index --no-assume-unchanged <filename>`

### References

- [[git/index|Git]]
