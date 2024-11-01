---
date: 2024-10-31
2024-10-31: 2024-10-31T22:27:00
tags:
  - obsidian
  - notes-app
---

## What is Obsidian?

Obsidian is an open-source notes-taking app available for desktop, mobile and web. It has lots of  notes-taking features that makes creating simple notes easier, such as allowing to create notes using Markdown, with live preview. It also allows organizing notes in hierchial directory structure.

> *This note discusses my initial Obsidian setup and Obsidian notes-creation process on a Windows desktop.*

### Table of Contents

- What is Obsidian?
- Requirements
- Installation
	- Create Templates
	- Obsidian Settings
		- Daily Notes
		- Templates
- Using Obsidian
	- Creating a New Note
	- Creating a Daily Note

### Requirements

1. Windows 10
2. Obsidian 1.7.4 (for Windows)
3. Pre-made templates (Markdown files) [Notes template](https://drive.google.com/drive/folders/1Kw_PSggrptWbVdz-JZR0GW6VaGx1lpti?usp=drive_link) and  [Daily Notes](https://drive.google.com/drive/folders/1hbCvc9IMCnLbRttfsliluRqEccJFGBis?usp=sharing)

## Installation

1. Install Obsidian.
2. Create the directory in which to store the Obsidian notes at:
	`D:\Angel\Obsidian`
3. Enter the vault name in which to store Obsidian notes within the directory in step #2. Obsidian will create this directory if it does not yet exist. For example, I am going to use the **VaultWeaponsforge** directory name
	`D:\Angel\Obsidian\VaultWeaponsforge`
### Create Templates

Create Templates to initialize creating new Notes.

1. **General Notes Template:** Create a `"Template"` directory inside the main Obsidian files directory from **step #3**. 
	- You may download and use the pre-made Obsidian Notes template files from [link](https://drive.google.com/drive/folders/1Kw_PSggrptWbVdz-JZR0GW6VaGx1lpti?usp=drive_link)
2. **Daily Notes Template:** Create a `"Daily"` directory inside the main Obsidian files directory from **step #3**. 
	- Daily notes will be created in a `"YYYY-MM-DD.md"` file here after clicking on a Note's "date" property, and setting up Obsidian's **Daily Notes** settings.
	- You may download and use the pre-made Obsidian Daily Notes template files from [link](https://drive.google.com/drive/folders/1hbCvc9IMCnLbRttfsliluRqEccJFGBis?usp=sharing)

### Obsidian Settings
Tweak the Obsidian Settings to work with your desired preferences.

#### Daily Notes Template
1. Open the Obsidian Settings - click the gear icon on the lower left.
2. Select **"Core Plugins"** in the sidebar.
3. Search for the **"Daily Notes"** plugin.
	- Click the gear icon of the "Daily Notes" plugin
4. Type/key-in the following values:
	- **Date format:** YYYY-MM-DD
	- **New file location:** Daily
	- **Template file location:** Templates/DailyTemplate

#### Templates
1. Open the Obsidian Settings - click the gear icon on the lower left.
2. Select **"Core Plugins"** in the sidebar.
3. Search for the **"Templates"** plugin.
	- Click the gear icon of the "Templates" plugin
4. Type/key-in the following values:
	- **Template folder location:** Templates
	- **Date format:** YYYY-MM-DD
	- **Time format:** HH:mm:ss A


## References

[^1]: [[Using Obsidian]]
[^2]: [[References]]