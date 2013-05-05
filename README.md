# Roomorama Boxen

This is the Roomorama Boxen repo

## Getting Started

Follow these steps to set up a new development machine:

### Dependencies

**Install the Xcode Command Lines Tools and/or full Xcode.**
This will grant you the most predictable behavior in building apps like
MacVim.

How do you do it?

1. Install Xcode from the Mac App Store.
1. Open Xcode.
1. Open the Preferences window (`Cmd-,`).
1. Go to the Downloads tab.
1. Install the Command Line Tools.

### Getting the code

* Clone this repo onto your machine

```
sudo mkdir -p /opt/boxen
sudo chown ${USER}:admin /opt/boxen
git clone https://github.com/roomorama/roomorama-boxen.git /opt/boxen/repo
cd /opt/boxen/repo
script/boxen
```

It should run successfully, and should tell you to source a shell script
in your environment.
For users without a bash or zsh config or a `~/.profile` file,
Boxen will create a shim for you that will work correctly.
If you do have a `~/.bashrc` or `~/.zshrc`, your shell will not use
`~/.profile` so you'll need to add a line like so at _the end of your config_:

``` sh
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
```

Once your shell is ready, open a new tab/window in your Terminal
and you should be able to successfully run `boxen --env`.
If that runs cleanly, you're in good shape.

## What You Get

The Roomorama Boxen provides the following by default:

* Homebrew
* Git
* Hub
* DNSMasq w/ .dev resolver for localhost
* RBenv
* Full Disk Encryption requirement
* Ruby 1.9.3
* Ruby 2.0.0
* Ack
* Findutils
* GNU-Tar
* MySQL
* Chrome
* Rubymine
* zsh

### Creating a personal module

You can modify your personal user module under modules/people/manifests/[GITHUBUSERNAME].pp

