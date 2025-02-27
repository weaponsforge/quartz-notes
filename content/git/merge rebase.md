---
title: Git Merge and Rebase
description: 
date: 2024-10-16
time: 2025-02-27T23:24:00
aliases: 
tags: 
draft:
---
## Git Merge and Rebase

**Source:** [Mayank Ahuja](https://www.linkedin.com/in/curiouslearner?miniProfileUrn=urn%3Ali%3Afsd_profile%3AACoAABqrgQcB72kLYkO2NPQ5F4SS-6pPeg2XODQ "‌") [link](https://www.linkedin.com/posts/curiouslearner_git-merge-vs-rebase-ugcPost-7251880186328064000--3Ck?utm_source=share&utm_medium=member_desktop)

If you are a Software Developer and struggling to choose between Git merge and rebase, this guide is for you. Give it a read. 👇

𝐌𝐞𝐫𝐠𝐞 =>``
◾ Git merge combines the histories of two branches by creating a new 'merge commit'.
◾ This commit has two parent commits, one from each branch.
◾ The resulting history shows a clear branching and merging structure, preserving the context of when and where changes were introduced.

Under the Hood -
◾ Git identifies a common ancestor commit between the two branches.
◾ It applies the changes from each branch that are not already present in the other.
◾ It creates a new commit that encapsulates these combined changes.

Remember,
The complete history of how branches evolved is maintained.
Existing commits are not altered.

𝐑𝐞𝐛𝐚𝐬𝐞 =>
◾ Git rebase rewrites the commit history by applying commits from one branch onto another, as if they were created on top of the new base.
◾ This results in a linear history, making it appear as if the development happened sequentially.

Under the Hood -
◾ Git temporarily saves the commits from the branch being rebased.
◾ It resets the branch to the new base commit.
◾ It replays the saved commits onto the new base, creating new commits with different IDs.

Remember,
Eliminates unnecessary merge commits.

📌 Let's discuss some FAQs.

1\. Which is better, merge or rebase?

There's no single 'better' option.
◾ Choose the one that aligns with your team's workflow and preferences.
◾ Merge preserves history, while rebase creates a cleaner, linear history.

2\. What is the golden rule of rebasing?

Never rebase a public branch that others are working on.
◾ Rebasing rewrites history, which can cause problems for others who have based their work on the original commits.

3\. Can I use merge and rebase together?

Yes.
◾ You can use rebase to tidy up a feature branch before merging it into the main branch.

4\. What is a merge conflict, and how do I resolve it?

A merge conflict occurs when Git cannot 'automatically' determine how to combine changes from different branches.
◾ You must manually edit the files to resolve the conflicts, then add and commit the changes.

5\. What is a fast-forward merge?

A fast-forward merge occurs when the branch you're merging into doesn't have any additional commits since the point where your branch diverged.
◾ Git simply moves the branch pointer forward 'without' creating a merge commit.

Now you have to answer this.

Is fast-forward merge same as Rebase?

### References

- [[git/index|Git]]
