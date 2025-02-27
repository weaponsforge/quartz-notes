---
title: Git Credentials
description:
date: 2019-10-27
time: 2025-02-27T23:01:00
aliases:
tags:
draft:
---
1. **Remove github from windows credential manager (not working)**

   ```bash
   git credential-manager remove --git:https://github.com
   git credential-manager deploy --git:https://github.com
   ```

2. **disable usage of windows credentials manager for git**
`git config --system --unset credential.helper`

   > OK, I discovered that you need to either avoid checking the "Git Credential Manager" checkbox during the Git for Windows installer, or (after installation) run the Bash shell as Administrator and use git config --edit --system to remove the helper = manager line so that it is no longer registered as a credential helper.
  > For bonus points, use git config --edit --global and insert:
  >
### References

- [[git/index|Git]]
