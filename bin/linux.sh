#!/bin/bash
VAR=uname ## grabs the uname value and assigns it to VAR
if (($VAR != "Linux")); then ##if the value of VAR is not "Linux"...
	echo "Error: uname is not Linux" >> "./linuxsetup.log" ## Throw an error into the linuxsetup.log file
	exit ## exit the script
else ##otherwise..
	echo "" ## essentially do nothing
fi ## end if statement
mkdir -p ~/.TRASH ##make a directory named .TRASH in the home directory
mv ~/.vimrc ~/.bup_vimrc ## rename a .vimrc file to .bup_vimrc
echo "The current .vimrc file was changed to '.bup_vimrc'" >> "./linuxsetup.log" ## echo that this was done in the linuxsetup.log
cat ../etc/vimrc > ~/.vimrc ## overwrite the .vimrc file in /etc/ to the home .vimrc file
echo "source ~/.dotfiles/etc/bashrc_custom" >> "../../.bashrc" ## append this sentence to the end of .bashrc in the home directory

