#!/bin/bash

# Install and configure my favorite settings
# on a freshly booted Linux LIVE ISO

# Start from this script's directory
cd "${BASH_SOURCE%/*}" || exit

sudo apt install git vim -y

# Configure git user settings
./quick-git-setup.sh

git clone https://github.com/chrisBosse/hello-world-repo.git \
  && cd hello-world-repo/ \
  && git status \
  && git log
