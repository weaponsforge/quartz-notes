---
title: Resolving Conflicts
description: 
date: 2018-04-17
time: 2025-02-27T22:48:00
aliases: 
tags: 
draft:
---
## Steps

- Run git status
- Open and edit the conflicted file (manually choose which revision to take over)
- git add [conflicted_file]
- git commit -m "Resolved conflicts."
- git push

## Resolving Large Conflicts in GitHub

Sometimes, PRs in GitHub do not allow automatic merge due to very large conflicts from branches. Do the following steps if it happens:

1. Create a PR from acap-rcmas/dev to ciatph/dev
2. Follow GitHub's commandline instructions for resolving merge conflicts
   - Go to the ciatph/dev repository
   - `git checkout -b ciatph-myupdates-dev` (choose other names for myupdates)
   - `git pull https://github.com/ciatph-dev/acap-rcmas.git dev` (acap-rcmas.git is the fork)
3. Fix the merge conflicts locally
   - Choose between "Accept current change", "Accept both changes" or "Accept both changes"
4. Commit merge conflicts but do not push
5. Checkout raw files from ciatph/dev
   - Copy+paste to the local repo where conflicts previously fixed
6. Go over and review each differing file
   - Apply updates as needed
7. Push updates as instructed by the GitHub commandline merge instructions, continuing from **step #2**
   - `git checkout dev`
   - `git merge --no-ff ciatph-myupdates-dev`
   - `git push origin dev`

![resolve.PNG](../_attachments/images/screenshots/resolve.PNG)

### References

- [[git/index|Git]]
