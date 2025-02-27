---
title: Orphan Branch
description:
date: 2022-03-17
time: 2025-02-27T22:55:00
aliases:
tags:
draft:
---
- **create an orphan branch**

```bash
git clone myrepo
git checkout --orphan gh-pages
git reset
git commit --allow-empty -m "Initial commit"
git push --set-upstream origin gh-pages
```

### References

- [[git/index|Git]]
