---
title: Export Repository
description: 
date: 2018-04-11
time: 2025-02-27T22:43:00
aliases: 
tags: 
draft:
---
**Export all files**

- git checkout-index -f -a */full\_path\_to_folder/
- git checkout-index -f -a --prefix=/D/LAB/Sqlite/_export/

**Export into a zipped file**

- git archive --format zip _full\_path/file\_name.zip_ _branch_name_
- git archive --format zip /D/LAB/Sqlite/sqlitemerge.zip master

**Export all tracked files, including those in .gitignore**

- Create a tar archive that contains the contents of the latest commit on the current branch, and extract it in the /var/tmp/junk directory.
   - git archive --format=tar --prefix=junk/ HEAD | (cd /var/tmp/junk/ && tar xf -)
- Create a compressed tarball for v1.4.0 release.
   - Switch to the `git-1.4.0` tag
      - `git checkout tags/git-v1.4.0`
   - `git archive --format=tar --prefix=git-1.4.0/ v1.4.0 | gzip > git-1.4.0.tar.gz`

---

1. **tar files compressed with gzip**
   - put a directory and its content into a TAR file
     `tar cvfz FILENAME.tar.gz DIRECTORY/`
   - extract from TAR files
     - ??? `tar -xvfz FILE.tar.gz`
     - `tar -zxvf FILE.tar.gz`
2. **get the uncompressed file size of a .tar.gz file**
   `tar ztvf foo.tar.gz --totals`

### References

- [[git/index|Git]]
