---
title: Revert Changes
description: 
date: 2018-04-11
time: 2025-02-27T22:38:00
aliases: 
tags: 
draft:
---
**WARNING**
Using _revert_ will reset your head repository to that version, and delete/overwrite succeeding revisions pushed after it.

**Un-stage, remove from staging area (used git add)**

- `git reset HEAD`

**Remove from committed area**

- `git restore --staged [file_name]`
- `git reset --soft HEAD~1`
- `git reset --soft HEAD^ [file_name]`

**Revert to last working revision from committed files**

- `git reset --hard short_SHA-1_code`

**Undo a merge**

- `git reset --hard short_SHA-1_code`

**Revert to last working revision, keeping local modifications from committed files**

- `git reset --soft short_SHA-1_code`

**Restore deleted files/folders to last working state**

- `git checkout [folder_name]`
- `git checkout .`

---

**Revert back to a specific commit on remote origin**

- `git pull`
- `git reset --hard [commit_hash]`
   - locally reset your repository to the desired commit hash
- `git push -f origin [branch_name]`
   - The -f option is necessary to force-push the changes since you are rewriting the commit history. Be cautious with this step as it will overwrite the commit history on the remote repository.

**Undo a commit from a remote origin**

- `git pull`
- `git revert <commit_sha>`
   - Revert the commit locally
- `git push origin <branch_name>`
   - Push the revert commit to remote
- `git push -f origin <branch_name>`
   - If needed, force push

### References

- [[git/index|Git]]
