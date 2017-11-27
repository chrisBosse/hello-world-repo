#!/data/data/com.termux/files/usr/bin/bash

# pkg install git openssh screen vim
# ssh-keygen
# git clone https://github.com/chrisBosse/hello-world-repo
# cd hello-world-repo/snip
# ./termux-quick-git-setup.sh
# cd -

echo "# set PATH so it includes user's private bin if it exists" >> $HOME/.bashrc
echo "if [ -d \"\$HOME/bin\" ] ; then" >> $HOME/.bashrc
echo "    PATH=\"\$HOME/bin:\$PATH\"" >> $HOME/.bashrc
echo "fi" >> $HOME/.bashrc
echo "" >> $HOME/.bashrc
echo "# set some aliases" >> $HOME/.bashrc
echo "alias ls='ls -aCF --color=auto'" >> $HOME/.bashrc
echo "alias ll='ls -l'" >> $HOME/.bashrc

