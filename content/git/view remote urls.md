---
title: View Remote URLS
description: 
date: 2018-04-18
time: 2025-02-27T22:53:00
aliases: 
tags: 
draft:
---
- **Add a remote origin**
  git remote add \_[remote\_name] __[remote_url]_
- **Add a remote origin to an initialized local repository**
  git init
  git remote add origin <remote_url>
  git push -u origin master
- **View remotes for repository**
  git remote -v
- **Remove the Remote**
  git remote rm _[remote_name]_
- **Add a remote origin to a local repository**
   - git remote add <origin\_name> <remote\_url>
- **Push commits to a different origin**
   - git push <origin\_name> <current\_branch_name>

### References

- [[git/index|Git]]
