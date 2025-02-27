---
title: List Revision Codes and Logs
description: 
date: 2018-04-11
time: 2025-02-11T22:35:00
aliases: 
tags: 
draft:
---
- **List long SHA-1 of revision codes and logs**

```bash
git log
git log --pretty=oneline
```

- **List short SHA-1 of revision codes and logs**
`git log --abbrev-commit`

- **List short SHA-1 of revision codes and logs in one long line**
`git log --abbrev-commit --pretty=oneline`

- **View logs from a revision**
`git show *short_SHA1_code*`

- **List references**

```bash
git show-ref
git show-ref --abbrev
```

- **List all logs with references**
`git reflog`

- **View logs from a revision from reflog**
`git show HEADER@{5}`

- **List logs with references**
`git log -g *branch_name*`

### References

- [[git/index|Git]]
