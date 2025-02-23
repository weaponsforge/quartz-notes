## quartz-notes

This repository, forked from [Quartz](https://github.com/jackyzha0/quartz), is for testing using Quartz.
Read the [Quartz Documentation](https://quartz.jzhao.xyz/) for more information.


### Installation and Usage

#### Using Docker

1. Add [Obsidian-format](https://obsidian.md/) Markdown (MD) content in the **/contents** directory.

2. Build the image<br>
`docker compose -f docker-compose.dev.yml build`

3. Run the container for local development.<br>
`docker compose -f docker-compose.dev.yml up`

4. Load the local quartz development site at:<br>
`http://localhost:8080`

5. Stop the local development site.<br>
`docker compose -f docker-compose.dev.yml down`


#### Edit/Add Content

> _Hot-reload works when running in a container, but changes currently do not reflect in the browser. Do the following steps when updating content using Docker for now._

1. Stop the local development site.<br>
`docker compose -f docker-compose.dev.yml down`

2. Add [Obsidian-format](https://obsidian.md/) Markdown (MD) content in the **/contents** directory.

3. Repeat **step # 3** under the [Installation and Usage](#installation-and-usage) section.

---

## Quartz v4

> “[One] who works with the door open gets all kinds of interruptions, but [they] also occasionally gets clues as to what the world is and what might be important.” — Richard Hamming

Quartz is a set of tools that helps you publish your [digital garden](https://jzhao.xyz/posts/networked-thought) and notes as a website for free.
Quartz v4 features a from-the-ground rewrite focusing on end-user extensibility and ease-of-use.

🔗 Read the documentation and get started: https://quartz.jzhao.xyz/

[Join the Discord Community](https://discord.gg/cRFFHYye7t)

## Sponsors

<p align="center">
  <a href="https://github.com/sponsors/jackyzha0">
    <img src="https://cdn.jsdelivr.net/gh/jackyzha0/jackyzha0/sponsorkit/sponsors.svg" />
  </a>
</p>
