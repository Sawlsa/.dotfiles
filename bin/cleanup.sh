#!/bin/bash
rm ~/.vimrc ##removes the .vimrc file from the home directory
sed -i 's/source [~][/]*.dotfiles[/]etc[/]bashrc_custom//' ../../.bashrc ##finds the phrase source ~/.dotfiles/etc/bashrc_custom and removes it from the .bashrc file

rm -r ~/.TRASH ## removes the .TRASH directory from the home directory
