---
title: Obsidian Notes Builder
description: Organizes, builds and deploys Obsidian Markdown files to blog-like digital gardens
date: 2024-11-08
2024-10-31: 2024-11-08T22:01:00
aliases:
  - Obsidian Notes Builder
tags:
  - obsidian
  - blog
  - notes-app
draft:
---
## Obsidian Notes Builder

The Obsidian Notes Builder streamlines Obsidian Markdown docs management by enforcing a generic linting format and Markdown writing guidelines from its **MD Linter** component.

Its **Builder** component builds a static website/blog-like digital garden using quartz. The output website build will be ready for deployment to static website hosting providers.

The Markdown docs, containing the website contents, will be managed in a GitHub repository for storage, management, and updating.

### Components

Currently, the idea is to have its three (3) main components inside a monorepo. Push or updates to a designated Git branch will trigger deployment to the static website hosting.

📂 **Docs**
- An Obsidian vault/folder containing Markdown files

🔄 **MD Linter**
- Uses markdownlint-cli2
- Lints Markdown files

🛠️ **Builder**
- Uses quartz
- Builds a digital garden/blog from local Obsidian docs (notes)

### References

- [[ideas/index|Ideas]]
- [quartz](https://github.com/jackyzha0/quartz)
- [markdownlint-cli2](https://github.com/DavidAnson/markdownlint-cli2)
