---
title: Delete Files
description: 
date: 2021-12-21
time: 2025-02-27T23:14:00
aliases: 
tags: 
draft:
---
- **delete untracked directories**
   - `git clean -f -d`
   - `git clean -fd`

- **delete untracked files**
   - `git clean -f -X`
   - `git clean -fX`

- **dry run deletion**  
   - `git clean -xn`

- **force delete ignored directories and files**  
   `git clean -xdf`

### References

- [[git/index|Git]]
