---
title: Git Tags
description: 
date: 2020-03-13
time: 2025-02-27T23:12:00
aliases: 
tags: 
draft:
---
- **delete a remote github tag**
  `git push --delete origin <TAGNAME>`
- **delete a local tag**
  `git tag -d <TAGNAME>`
- **batch delete all repository tags**
   - First, delete all remote tags
      - `git tag | xargs -L 1 | xargs git push origin --delete`
   - Then delete all local tags
      - `git tag | xargs -L 1 | xargs git tag --delete`

### References

- [[git/index|Git]]
