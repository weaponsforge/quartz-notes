---
title: Release Versioning
description: 
date: 2024-09-11
time: 2025-02-27T23:23:00
aliases: 
tags: 
draft:
---
_(From ChatGPT)_

In software development, **alpha**, **beta**, and **rc** (release candidate) are stages of a pre-release cycle that indicate the progress and stability of a version. Here's the difference between them:

### 1. **Alpha**

- **Purpose**: Early testing and internal feedback.
- **Stability**: Highly unstable. It's the first stage of the release process, and the software is still under heavy development.
- **Features**: Many features may be incomplete or in progress. New features are likely to be added or significantly changed.
- **Audience**: Typically intended for internal teams or select testers who can handle breaking changes and provide early feedback.
- **Versioning**: `11.0.0-alpha.1`, `11.0.0-alpha.2`, etc.

### 2. **Beta**

- **Purpose**: More refined testing for a broader audience.
- **Stability**: More stable than alpha but still potentially has bugs. All major features are usually complete, but bug fixes and improvements are ongoing.
- **Features**: The focus is on fixing issues and optimizing the user experience rather than adding new features.
- **Audience**: Wider group of testers, including external users, who can provide feedback on usability, performance, and bug reports.
- **Versioning**: `11.0.0-beta.1`, `11.0.0-beta.2`, etc.

### 3. **RC (Release Candidate)**

- **Purpose**: Final testing before a stable release.
- **Stability**: Near-stable and ready for release, barring any major last-minute issues.
- **Features**: No new features are added at this stage. It's focused on fixing critical bugs and ensuring the release is production-ready.
- **Audience**: Aimed at a broader audience to catch any remaining critical issues before the official stable release.
- **Versioning**: `11.0.0-rc.1`, `11.0.0-rc.2`, etc.

### Progression

- **Alpha**: Experimental and incomplete.
- **Beta**: Feature complete, but needs more testing.
- **RC**: Almost ready for general release; final polish and bug fixes.

Once the release candidate is stable and no major issues are found, it progresses to a **stable version** like `11.0.0`.

### References

- [[git/index|Git]]
