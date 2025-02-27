---
title: GPG Keys
description: About TS Null and Undefined types
date: 2024-08-18
time: 2025-02-27T23:05:00
aliases:
tags:
draft:
---
## Description

Most often, we’d like to verify that we are the legitimate author of our git commits, since Git allows specifying a git username and email for “unsigned” commits. Using GPG keys to sign commits is an alternative to using SSH keys.

> _There are several ways in which a git repository can be compromised (this isn't a security flaw, just a fact of life one should not avoid using git because of this). For example, someone may have pushed to your repository claiming to be you. Or for that matter, someone could have pushed to someone else's repository claiming to be you (someone could push to their repository claiming to be you too). This is just part of life in a distributed version control system. -_[_StackExchange_](https://softwareengineering.stackexchange.com/questions/212192/what-are-the-advantages-and-disadvantages-of-cryptographically-signing-commits-a/212216#212216 "‌")_,_ user40980

‌

> _**By signing commits, we add a “stamp of approval” → confirming that this is your work.**_

This tutorial describes setting up GPG keys for Windows OS and GitHub.

## Requirements

- GitHub Account (1 or multiple GitHub accounts)
   - Requires verified email address
- GitBash (for Windows) [[link](https://gitforwindows.org/ "‌")]
   - Git version 2.42.0.windows.2
- Gpg4win [[link](https://www.gpg4win.org/ "‌")]
   - This tutorial uses the following specs:

  ```text
  GPG
    gpg (GnuPG) 2.4.5
    libgcrypt 1.10.3
    ===
    KLEOPATRA
    Kleopatra v3.2.2.231170 (Gpg4win-4.3.1)
    KDE Frameworks v5.109.0
    Qt v5.15.9 (built against 5.15.9)
    ```

## Contents

- Generating a New GPG Key
- Add the GPG Key to Your GitHub Account
- Signing Commits
- GPG Keys Management
   - Associating an Email with your GPG key
   - Deleting GPG Keys
   - Revoking GPG Keys
- Git Commands
- Best Practices
- EdDSA / ED25519
- RSA
- References

‌

---

## Generating a New GPG Key

> _**NOTE:** GitHub supports the following GPG key algorithms: RSA, ElGamal, DSA, ECDH, ECDSA, EdDSA. Keys generated with other algorithms may not work._

‌

> _**TIP:** For modern gpg key security, follow the comments for using **EdDSA / ED25519**_

1. Open Git Bash
2. Generate a GPG key pair
   1. `gpg --full-generate-key`
3. Answer the prompts for generating the GPG key pair
   1. **Please select what kind of key you want:** “_(1) RSA and RSA (default)"_
   2. **What key size do you want?** _4096_
   3. **Please specify how long the key should be valid:** _1y_ (key expires in 1 year)
   4. **Is this correct?** (y/N): y
   5. **Real name:** (Enter your GitHub name or real name)
   6. **Email address:** (Enter your GitHub-verified email address)
   7. **Comment:** (Enter any comment about the GPG key)
   8. **Change (N)ame, (C)omment, (E)mail or (O)kay/(Q)uit?**: “O”
   9. **Enter a passphrase:** (Enter a random passphrase)
4. List the long form of the GPG keys for which you have both a public and private key. A private key is required for signing commits or tags.
   10. `gpg --list-secret-keys --keyid-format=long`
5. Copy the long form of the GPG key ID you’d like to use from step #4. For example, the GPG key ID for this sample is: `3AA5C34371567BD2`

   1. ```none
      $ gpg --list-secret-keys --keyid-format=long
      /Users/hubot/.gnupg/secring.gpg
      // ------------------------------------
      sec   4096R/3AA5C34371567BD2 2016-03-10 [expires: 2017-03-10]
      uid                          Hubot <hubot@example.com>
      ssb   4096R/4BB6D45482678BE3 2016-03-10
      ```

6. Generate the **GPG key** from the GPG Key ID in ASCII armor format into a text file:
   1. `gpg --armor --export 3AA5C34371567BD2 > public_key.asc`
7. Copy your GPG key from the **key.txt** file, beginning with `-----BEGIN PGP PUBLIC KEY BLOCK-----` and ending with `-----END PGP PUBLIC KEY BLOCK-----`

‌

---

## Add the GPG Key to Your GitHub Account

1. Sign-in to your GitHub Account
2. Click your Profile icon in the upper right menu, then go to **Settings** → **SSH and GPG Keys**
3. Pres the **New GPG key** button under the **GPG keys** section
4. Enter a title
5. Paste the generated GPG key in the **Key** input area

---

## Signing Commits

### Automatically use a GPG Key

1. Configure your Git client to sign commits by default for a local repository (works for Git versions 2.0.0 and above)
   1. `git config commit.gpgsign true`

### Telling Git About your GPG Key

If you have multiple GPG keys, you need to tell Git which one to use.

1. Open Git Bash
2. If you have previously configured Git to use a different key format when signing with `--gpg-sign`, unset this configuration so the default format of `opengp` will be user.
   1. `git config --global --unset gpg.format`
3. List the long form of the GPG keys for which you have both a public and private key.
   1. Find your GPG key ID here
   2. Note: It’s the random 16-char length after the `sec` key
4. Set your primary GPG signing key in Git
   1. `git config --global user.signingkey <GPG_SIGNING_KEY>`
   2. **Note:** If you use multiple keys and subkeys, then you should append an exclamation mark `!` to the key to tell git that this is your preferred key. Sometimes you may need to escape the exclamation mark with a back slash: `\!`.
5. To unset your primary GPG signing key in Git from **step #4:**
   1. `git config --global --unset user.signingkey`
6. Optionally, configure Git to sign all commits by default, entering the following command:
   2. `git config --global commit.gpgsign true`
7. To reset the auto-GPG signing from **step #6**:
   1. `git config --global --unset commit.gpgsign`

### Commit with a Signed GPG Key

1. Add the -S flag to sign your Git commit messages:
   1. `git commit -S -m "My first signed commit"`
2. If you’re using GPG, supply your passphrase that you set up when you generated your GPG key after making a commit.
3. Push the commit to GitHub
4. Confirm that your commit has a “Verified” label

---

## GPG Keys Management

## Associating an Email with your GPG key

1. Open Git Bash
2. List the long form of the GPG keys for which you have both a public and private key.
   1. `gpg --list-secret-keys --keyid-format=long`
3. Copy the long form of the GPG key ID you’d like to use from step #2.
   1. Note: Its the random 16-characters after the `sec:` key
4. Edit the GPG key
   2. `gpg --edit-key <GPG_KEY_ID>`
5. In the gpg terminal, type:
   1. `gpg> adduid`
6. Follow the prompts to supply other information such as real name, email address, comments, passphrase, and others for the new email to be added.
   2. _**TIP:** You can also provide your GitHub-provided **no-reply** email address here, to keep your email address private._
7. Save the changes within the gpg terminal:
   1. `gpg> save`
8. Print the updated GPG key in ASCII armor format into a text fiile:
   2. `gpg --armor --export <GPG_KEY_ID > public_key.asc`

## Revoking GPG Keys

1. List the long form of the GPG keys for which you have both a public and private key.
   1. `gpg --list-secret-keys --keyid-format=long`
2. Copy the long form of the GPG key ID you’d like to use from step #2.
   2. Note: Its the random 16-characters after the `sec:` key
3. Edit the GPG key
   1. `gpg --edit-key <GPG_KEY_ID>`
4. In the GPG command prompt, type:
   2. `revkey`
5. Answer the prompts for revoking the key
6. In the GPG command prompt, type:
   1. `save`
7. Confirm the deletion of the GPG key. This command should log a “revoked” status
   1. `gpg --list-keys`
8. Publish the revoked key and notify your contacts.

## Deleting GPG Keys

> **NOTE:** Revoke GPG keys first, before deleting them.

1. List the long form of the GPG keys for which you have both a public and private key.
   1. `gpg --list-secret-keys --keyid-format=long`
2. Copy the long form of the GPG key ID you’d like to use from step #2.
   2. Note: Its the random 16-characters after the `sec:` key
3. Delete the public GPG key
   1. `gpg --delete-key <GPG_KEY_ID>`
4. Delete the secret GPG key
   2. `gpg --delete-secret-key <GPG_KEY_ID>`

## Exporting GPG Keys

1. List the long form of the GPG keys for which you have both a public and private key.
   1. `gpg --list-secret-keys --keyid-format=long`
2. Copy the long form of the GPG key ID you’d like to use from step #2.
   2. Note: Its the random 16-characters after the `sec:` key
3. **Export** the **public/secret GPG keys** in ASCII armor format into a text file:
   1. `gpg --export --armor <GPG_KEY_ID> > public_key.asc`
   2. `gpg --export-secret-keys --armor <GPG_KEY_ID> > private_key.asc` (Optional)
4. Transfer the key files to another PC or laptop.
   1. Use a USB, email, or other download methods.
5. **Import** the **public/private GPG keys** on the other PC or laptop.
   1. `gpg --import public_key.asc`
   2. `gpg --import private_key.asc` (Optional)
6. Mark the key as “trusted” after import.
   1. `gpg --edit-key <GPG_KEY_ID>`
   2. `gpg> trust`
   3. When prompted, select **5 = I trust ultimately**
   4. Save the key `gpg> save`
7. List the keys to verify the import.
   1. `gpg --list-secret-keys`
   2. (Optional) Revoke the key on the old machine/laptop if you no longer want to use it there, especially if you transferred the private key.

## Managing GPG Subkeys

- GPG Subkeys are usually inside master GPG keys
- Managing subkeys share similar methods to Managing GPG Keys
- To manage GPG keys, first, “edit” its master key
   - `gpg --edit-key <GPG_MASTER_KEY_ID>`
- Select a subkey. The selected subkey will be marked with an asterisk `"*"`
   - `gpg> key <GPG_SUBKEY_ID>`
- Revoke, edit or manage the selected subkey
   - `gpg> revkey`

## Changing the Expiration Date

1. List available GPG keys
   `gpg --list-secret-keys --keyid-format=long`
2. Edit a GPG key from the list in step #1
   `gpg --edit-key <GPG_KEY>`
3. Change the current key's expiration date.
   `gpg> expire`
4. Type an option from the options list and press enter.

```text
0    = key does not expire
<n>  = key expires in n days
<n>w = key expires in n weeks
<n>m = key expires in n months
<n>y = key expires in n years
```

1. Select a subkey if there are subkeys to edit within the master key.
   1. `gpg> key <GPG_SUBKEY_ID>`
   2. Repeat step #3

---

## Git Commands

- **view git commits with gpg key signatures**
   - `git log --show-signature`
- **verify a specific commit** (after importing others public key into your keyring)
   - `git verify-commit <COMMIT_SHA>`

---

## Best Practices

Follow these steps for the purpose of creating **RSA** GPG keys only for signing GitHub commits.

Follow this [link](https://dev.to/benjaminblack/signing-git-commits-with-modern-encryption-1koh "‌") to create similar EdDSA (Ed25519) GPG keys.

> _**TIP:** It’s best to separate concerns, create public/secret keys for each action i.e., (S)igning, (C)ertificate Creation, and (E)ncryption_

## Steps

1. Create a primary GPG key following the tutorial.
2. Edit this key.
3. Add a subkey, only for (S)igning
4. Use the subkey when signing commits in GitHub commits.

---

## EDDSA / ED25519 - Pros

- Edwards-curve Digital Signature Algorithm (EdDSA)
- from a branch of cryptography called “elliptic curve cryptography (ecc)”
- security of ED25519 is based on the difficulty of solving the elliptic curve discrete logarithm problem
- security - achieves 256-bit security with a3072-bit key (rsa)
- more efficient in shorter key length/size, computation and memory
   - key size: 256 bits
- faster encryption processing
- more robust against PRNG (pseudo-random number generator) failure
- quantum computing resistant - resistant to attacks by quantum computers
- good for future-proofing, speed, enhanced security for complex services or web structure/platform with large scope

## RSA - Pros

- Rivest-Shamir-Adleman
- is based on the difficulty of factoring large prime numbers
- large key sizes, 2048 bits
- security - rsa algorithms need to output a 3072-bit key to achieve 128-bit security (industry standard)
- good for basic encryption for data transfer/protection for a simple server connection

---

## GPG References

- GitHub Vigilant Mode [link](https://docs.github.com/en/authentication/managing-commit-signature-verification/displaying-verification-statuses-for-all-of-your-commits)
- generating a new gpg key [link](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key)
- signing gh commits [link](https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-commits)
- tell git about your signing key [link](https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key)
- associating emails with the gpg key [link](https://docs.github.com/en/authentication/managing-commit-signature-verification/associating-an-email-with-your-gpg-key)
- signing commits with gpg on ubuntu [link](https://dev.to/mmphego/how-to-sign-your-commits-on-github-with-gpg-37nj)

### Articles

- how and why to sign git commits [link](https://withblue.ink/2020/05/17/how-and-why-to-sign-git-commits.html)
   - great article explaining gpg keys for git security
- git horror story: repository integrity with signed commits [link](https://mikegerwitz.com/2012/05/a-git-horror-story-repository-integrity-with-signed-commits)
- extensive guide to gpg privacy [link](https://dev.to/nerdynene/extensive-guide-to-gnu-privacy-guard-gpg-2a1)
- ***using gpg keys only for signing (eddsa/ed25519)** [link](https://dev.to/benjaminblack/signing-git-commits-with-modern-encryption-1koh)
- practical guide to gpg - generate pub/sec keys [link](https://www.linuxbabe.com/security/a-practical-guide-to-gpg-part-1-generate-your-keypair)
- visual explanation of gpg subkeys [link](https://rgoulter.com/blog/posts/programming/2022-06-10-a-visual-explanation-of-gpg-subkeys.html)
- primary-subkey twitter analogy [link](https://serverfault.com/questions/397973/gpg-why-am-i-encrypting-with-subkey-instead-of-primary-key)

### EdDSA/Ed25519 vs. RSA

- go for ed25519 over rsa if its available [link](https://security.stackexchange.com/a/254048)
- choosing rsa or ed25519 [link](https://www.aoitcloud.com/blog/ssh-keys-choosing-rsa-or-ed25519/)
   - pros/cons, where each is most suited
- ed25519 vs rsa performace speed [link](https://serverfault.com/questions/1081266/ssh-keys-ed25519-vs-rsa-performance-demystified)
- why switch to eddsa/ed25519 from rsa [link](https://blog.kovah.de/en/2019/switching-from-rsa-to-eddsa-ec25519/)
- ed25519 computations, algorithms [link](https://www.reviewplan.com/ed25519-vs-rsa/)
- symmetric/asymmetric cryptography and ed25519 [link](https://security.stackexchange.com/questions/101044/is-it-bad-that-my-ed25519-key-is-so-short-compared-to-a-rsa-key)

### Security/Hacking

- beware using ecdsa → use eddsa [link](https://web.archive.org/web/20181130215509/https://medium.com/asecuritysite-when-bob-met-alice/not-playing-randomly-the-sony-ps3-and-bitcoin-crypto-hacks-c1fe92bea9bc), [link](https://dev.to/benjaminblack/signing-git-commits-with-modern-encryption-1koh)
   - sony ps3 and bitcoin crypto hacks

### YubiKey, Others

- excellent guide for using yubikey with gnupg and ssh [link](https://github.com/drduh/YubiKey-Guide)
- keylength [link](https://www.keylength.com/)
   - interactive guide for computing ang visualizing keylengths

---

## Summary - ED25519 Signing GPG Key

1. Create an EdSA ED25510 GPG key
    gpg --expert --full-generate-key

2. Select options:
    1. (9) ECC and ECC
    2. (1) Curve 25519

3. Copy primary GPG key ID
    gpg --list-secret-keys --keyid-format=long

4. Create a subkey
    1. gpg --expert --edit-key <GPG_KEY_ID>

5. Select option:
    1. (10) ECC (sign only)
    2. (1) Curve 25519

6. Save
    1. gpg> save

7. Export the public/secret GPG keys for safekeeping
    1. gpg --export --armor <PRIMARY_GPG_KEY_ID> > public_key.asc
    2. gpg --export-secret-key --armor <PRIMARY_GPG_KEY_ID> > primary_secret_key.asc
    3. gpg --export-secret-key --armor <SIGNING_GPG_KEY_ID> > signing_secret_key.asc

8. Copy the GPG primary key to GitHub account, if not yet copied.

9. Use the signing GPG key ID generated om **step #6 (Save)** to sign commits
    git config --global user.signingkey <SIGNING_GPG_KEY_ID>

10. Sign all commits by default
    git config --global commit.gpgsign true

## Summary - RSA Signing GPG Key

1. Create a GPG key
    `gpg --full-generate-key`

2. Select options:
    1. `(1) RSA and RSA (default)`
    2. key size: 4096

3. Copy GPG key ID
    `gpg --list-secret-keys --keyid-format=long`

4. Export the public/secret GPG keys for safekeeping
    `gpg --export --armor <GPG_KEY_ID> > public_key.asc`
    `gpg --export --armor <GPG_KEY_ID> > secret_key.asc`

5. Copy the GPG public key to GitHub account, if not yet copied.

6. Set the primary GPG signing key
    `git config --global user.signingkey <GPG_KEY_ID>`

7. Sign all commits by default
    `git config --global commit.gpgsign true`

### References

- [[git/index|Git]]
