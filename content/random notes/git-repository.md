---
title: Git Repositories
description: Random notes, findings and experiments in Git repositories
date: 2024-11-03
2024-10-31: 2024-11-03T14:33:00
aliases:
  - Git Repositories
  - GitHub
tags:
  - git
  - github
---
## Deleting Forked Git Repositories

It's possible to delete forked Git repositories (tested on GitHub) using the following methods by the following actors:

- 🤵 **Owner** - GitHub repository owner
- 🧑‍🤝‍🧑 **Collaborator** - GitHub user invited by the code Owner to collaborate in the repository
- 🧑‍💻 **Forker** (non-Collaborator) - GitHub users with access to public GitHub repositories. They do not require a Collaborator invite by Owners

### 🌐 Public Git Repository

1. **No Collaborator invite**
   - 🧑‍💻 Forker (non-Collaborator) forks a **`"public"`** repo
   - 🤵 The Owner deletes the **`public`** repo
   - ✅ ***Forker retains the forked `public` repo***

2. **With collaborator invite**
   - 🤵 The Owner invites a 🧑‍🤝‍🧑 Collaborator to a **`"public"`** repo
   - 🧑‍🤝‍🧑 The Collaborator forks the **`public`** repo
   - 🤵 The Owner deletes the **`public`** repo
   - ❌ ***Forked `public` repo disappears***

### 🚫 Private Git Repository

1. **With collaborator invite**
   - 🤵 Owner invites a 🧑‍🤝‍🧑 Collaborator to a **`"private"`** repo
   - 🧑‍🤝‍🧑 Collaborator forks the **`private`** repo
   - 🤵 Owner deletes the **`private`* repo
   - ❌ ***Forked `private` repo disappears***

## References
- [[random notes/index|Random Notes]]