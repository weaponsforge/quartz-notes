---
title: Basic Git Commands
description: 
date: 2018-04-03
time: 2025-02-27T22:18:00
aliases: 
tags: 
draft:
---
- **Prerequisites**
Configure your email address and username to be used by Git. The flag --global means apply the configuration to all of your Git repositories on the computer. The flag --local means apply the confoguration to only the current Git repository.
$ git config [--local | --global] user.email "userid@domain.tld"
$ git config [--local | --global] user.name "username"

- **View git config details**
$ git config --list

- **Create a local push repository**
$ git init --bare <push_repository_name>.git
$ git clone /D/LOCALGIT/<push_repository_name>

- **Add a local push repository as remote to a local project**
$ git init
$ git remote add origin D:/LAB/LOCALGIT/project.git
$ git fetch

- **Create a local repository**
$ mkdir Projects
$ mkdir Projects/DataScientistsToolbox
$ mkdir Projects/DataScientistsToolbox/sample
$ cd Projects/DataScientistsToolbox/sample
$ git init
Initialised empty Git repository in /home/osboxes/Projects/DataScientistsToolbox/sample/.git/
$ ls -la
drwxrwxr-x 3 osboxes osboxes 4096 Apr  5 19:15 .
drwxrwxr-x 3 osboxes osboxes 4096 Apr  5 19:07 ..
drwxrwxr-x 7 osboxes osboxes 4096 Apr  5 19:15 .git

- **Create an empty README.md file in the local repository.**
**$ touch README.md
$ git add .
$ git commit -m "initial commit"**
[master (root-commit) b7c48f3] initial commit
1 file changed, 0 insertions(+), 0 deletions(-)
create mode 100644 README.md
**$ git status**
On branch master
nothing to commit, working directory clean
**$ git show**
commit b7c48f3e5cdc772e6a198c3633acd853a69a5778
Author: jhudss
Date: Sun Apr 5 19:21:21 2015 -0300
initial commit
diff --git a/README.md b/README.md
new file mode 100644
index 0000000..e69de29

- **Edit the README.md file and type any text in markdown format into the file.**
**$ nano README.md
$ git add -A .
$ git commit -m "added content"**
[master 8fd8eb8] added content
1 file changed, 41 insertions(+)

- **Edit the README.md file swapping "Getting and Cleaning Data" and "Exploratory Data Analysis."**
**$ nano README.md
$ git commit -m "swapped order of two courses"**
[master 87d0125] swapped order of two courses
1 file changed, 1 insertion(+), 1 deletion(-)

- **Determine whether there are any changes.**
**$ git status**
On branch master
nothing to commit, working directory clean
**$ git show**
commit 87d012594aa5a8a39e99d4728dc8c853779587ab
Author: jhudss
Date: Sun Apr 5 19:34:34 2015 -0300
swapped order of two courses
diff --git a/README.md b/README.md
index 756292a..48587e6 100644
---a/README.md
+++b/README.md
@@ -25,8 +25,8 @@ The courses comprising the Data Science Specialization are:
*Data Scientist's Toolbox
*R Programming-
*Exploratory Data Analysis
*Getting and Cleaning Data+
*Exploratory Data Analysis
*Reproducible Research
*Statistical Inference
*Regression Models

- **Create a branch named 'draft'.**
**$ git checkout -b draft**
Switched to a new branch 'draft'
**$ git status**
On branch draft
nothing to commit, working directory clean

- **Edit the README.md file to add "Git is easy. Git is fun. Thanks Linus!" anywhere in the file.**
**$ nano README.md
$ git status**
On branch draft
Changes not staged for commit:
    (use "git add ..." to update what will be committed)
    (use "git checkout -- ..." to discard changes in working directory)
modified: README.md
no changes added to commit (use "git add" and/or "git commit -a")
**$ git commit -a -m "thanked the creator of Git"**
[draft 34af00f] thanked the creator of Git
1 file changed, 2 insertions(+)

- **Switch to the 'master' branch and check the repository status.**
**$ git checkout master**
Switched to branch 'master'
**$ git status**
On branch master
nothing to commit, working directory clean

- **Switch to a git tag**
`git checkout tags/v3.2.1`

- **Merge the 'draft' branch' with the 'master' branch and check the repository status.**
**$ git merge  draft**
Updating 87d0125..34af00f
 Fast-forward
 README.md | 2 ++
1 file changed, 2 insertions(+)
**$ git status**
On branch master
nothing to commit, working directory clean
**$ git show**
commit 34af00fc564fd28e485503715dd5a9a9a461329a
Author: jhudss
Date: Sun Apr 5 19:49:08 2015 -0300
thanked the creator of Git
diff --git a/README.md b/README.md
--index 48587e6..aa53fee 100644
--- a/README.md
+++ b/README.md
@@ -19,6 +19,8 @@ is to provide the learner with:
 1. an appreciation of the mathematics & statistics involved indata science.
+Git is easy. Git is fun. Thanks Linus!

### References

- [[git/index|Git]]
- [The Data Scientist's Toolbox](https://www.coursera.org/learn/data-scientists-tools/discussions/weeks/2/threads/xDmwWMtdEeWOeA4jiPAy1w)
