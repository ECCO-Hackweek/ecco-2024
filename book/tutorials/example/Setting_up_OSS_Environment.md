# Example headings 

## Linking your github account

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
    

## This'll  be a _Helpful_ Section About the Greek Letter Θ!
A heading containing characters not allowed in fragments, UTF-8 characters, two consecutive spaces between the first and second words, and formatting.

## This heading is not unique in the file

TEXT 1

## This heading is not unique in the file

TEXT 2

# Links to the example headings above

Link to the sample section: [Link Text](#sample-section).

Link to the helpful section: [Link Text](#thisll--be-a-helpful-section-about-the-greek-letter-Θ).

Link to the first non-unique section: [Link Text](#this-heading-is-not-unique-in-the-file).

Link to the second non-unique section: [Link Text](#this-heading-is-not-unique-in-the-file-1).
