#!/data/data/com.termux/files/usr/bin/bash

# Configure git on a fresh Termux install

git config --global user.email "30784811+chrisBosse@users.noreply.github.com"
git config --global user.name "Chris Bosse"
git config --global core.editor "vim"
# supresses warning prompt from Git 2.0 with conservative choice
git config --global push.default simple
