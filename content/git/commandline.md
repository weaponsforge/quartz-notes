---
title: Command Line Commands
description: 
date: 2018-04-03
time: 2025-02-27T22:22:00
aliases: 
tags: 
draft:
---
- Create an empty repository on GitHub and push the content of the local repository to your GitHiub account.

```bash
curl -u user_name https://api.github.com/user/repos -d "{"name":"sample","description":"learning about Git and GitHub"}"
git remote add origin https://github.com/username/sample.gitConnect your Github account
git push origin master
```

- Clone an existing repository from GitHub
    `$ git clone https://github.com/username/sample`
- Clone an existing GitHub repository from a target branch
  `$ git clone --branch=<BRANCH_NAME> https://github.com/username/sample`
- Get the base name (last name, without suffixes) of a url or file path
  `basename ```git rev-parse --show-toplevel``` (enclosed in ``)
- Get the remote origin url
  `git config --get remote.origin.url`

### References

- [[git/index|Git]]
