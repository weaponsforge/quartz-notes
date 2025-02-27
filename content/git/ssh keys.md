---
title: SSH Keys
description:
date: 2020-01-03
time: 2025-02-27T23:03:00
aliases:
tags:
draft:
---
## Content

- GitLab SSH Keys Setup
- Clone a GitLab Repository Using SSH

## GitLab SSH Keys Setup

1. Enter the following using GitBash:
   - `ssh-keygen -t ed25519 -C "acetiercel@yahoo.com"`

2. Copy the public key to clipboard.
   - `cat ~/.ssh/id_ed25519.pub | clip`

3. Paste the public key in your GitLab account.
   - Go to **Profile** -> **Settings** -> **SSH Keys**
   - Enter the public key and Save

4. Test that SSH keys are setup correctly. *(replacing gitlab.com with your GitLab’s instance domain):*
   - `ssh -T git@gitlab.com`

## Clone a GitLab Repository Using SSH

1. Get access permissions to a GitLab repository. You'll have access permissions if you are a member.
2. Clone the repository:
   `git clone git@gitlab.com:madbarua/externals.git`
3. Succeeding git operations on this ssh-cloned repository won't require user/name passwords.

### References

- [[git/index|Git]]
- [1](https://docs.gitlab.com/ee/gitlab-basics/create-your-ssh-keys.html) - ssh keys for gitlab
