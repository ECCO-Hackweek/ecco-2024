# Setting up your OSS Environment

Ian Fenty and Andrew Delman, 2024-09-25

This tutorial describes how to 1) link your existing GitHub account to your new OSS environment and 2) fork and clone the "ECCO-v4-Python Tutorial" GitHub repository onto your local OSS disk.

[Linking your GitHub Account](#linking-your-github-account).\
[Fork and Clone the ECCO-v4-Python Tutorial](#fork-and-clone-the-ecco-v4-python-tutorial)

## Linking your GitHub account

To link your existing github account to the OSS, you need to make SSH keys on the OSS and then tell github about your key.

1. Log into the OSS JupyterHub
1. Open a new terminal window: [Instructions](https://jupyterlab.readthedocs.io/en/latest/user/terminal.html#)
   - Method 1: *Toolbar --> File --> New --> Terminal*
   - Method 2: *Click the blue + button in the file browser --> select the $_ Terminal Button*
1. Generate a new SSH public/private key pair. Use the email address associated with your github account.\
   ```ssh-keygen -t ed25519 -C "your.email@example.com"```
   - if you use the default filenames you will get *id_ed25519.pub* (public key) and *id_ed25519* (private key) in `/home/jovyan/.ssh` 
   - you can hit enter when asked for a passphrase for [no pass phrase](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/working-with-ssh-key-passphrases)
1. Add the new SSH public key to your GitHub account. [Detailed Instructions](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)
   - Log into your github account
   - click on your profile picture (usually in the top right corner of the github page)
   - click *Settings*
   - click on *SSH and GPG keys* on the left hand side
   - click on *Green button*: "New SSH Key"
   - Make a title, something like *ECCO_HackWeek*
   - Key type should be "Authentication Key"
   - Copy the contents of your public key file on OSS (*id_ed25519.pub*) to the clipboard
     - Return to the OSS JupyterLab terminal window
     - Show the contents of the public key file to the screen: ```cat ~/.ssh/id_ed25519.pub```
     - select the text, ```ssh-ed25519 .... your.email@example.com```, and copy (Ctrl-C or equivalent)
   - Paste the text in the *Key* text box in the GitHub *Add new SSH Key* page
   - Click the *Green button*: "Add SSH key"
   - Verify the new key appears on the list of "SSH keys" on the [GitHub SSH keys page](https://github.com/settings/keys)
    
## Fork and Clone the "ecco-2024" repository

By default, the OSS system does not have any notebooks or codes loaded. To get the Hackweek "ecco-2024" Github repository and its associated Jupyter Notebooks and Python codes, we suggest that you fork and clone the repo to your OSS account.

Forking and cloning a repository is beneficial because it:
- Forking allows you to create your own copy of a project under your GitHub account.
- You can freely experiment, make changes, and develop features without affecting the original project.
- After cloning the forked repository, you can sync updates from the original repository and contribute back via pull requests.

### Fork the "ecco-2024" repository
1. Log into your GitHub account
2. Navigate to the [ecco-2024 Github Page](https://github.com/ECCO-Hackweek/ecco-2024)
3. Click *Gray* Fork Button: [Detailed Forking Instructions](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo)
4. In the "Create a new fork" page, choose yourself as the "Owner"
5. Click *Green* "Create fork" button
6. After a few seconds, a new page will appear with your new forked repository

### Clone the "ecco-2024" repository
1. Click *Green* "\<\> Code" button
2. In the "Local Tab", select the "SSH" tab
> [!NOTE]
> By selecting the SSH tab, you can contribute code using your GitHub Identity on the OSS that you set up in [Linking your GitHub Account](#linking-your-github-account).
3. Copy the the `git@github.com:[...]` link to the clipboard (select and copy or use handy copy button with the two squares)
4. Return to the OSS JupyterLab terminal window
5. go to your home directory `cd ~/`
6. clone the link that you copied: ex) ```git clone git@github.com:...```
   - enter your ssh key passphrase if you used one when creating the key

Now you should have a directory called `/home/jovyan/ecco-2024`

## Set up Github identity on OSS

To commit any new notebooks or code to the `ecco-2024` repo (or any other you clone to the OSS system) you need to identify yourself using the e-mail associated with your Github account. This can be done with two commands:

```
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

This identity is placed in a file `~/.gitconfig` in your user home directory. Now when you commit changes to the repo and push them to your fork (and ultimately the main repo), you are identified as the author of those changes.
