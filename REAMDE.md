linux.sh:

This is a script that will check the user to see if they are running Linux. If the user is not running Linux, it will terminate the entire script. Otherwise, the script continues by creating a .TRASH directory in the home directory, changes any existing .vimrc file into '.bup_vimrc', overwrites .vimrc contents in the home directory to the contents in the /etc/vimrc file, and adds a statement to the end of the .bashrc file in the home directory.

cleanup.sh

This is a script that basically undoes all that linux.sh does. It deletes the .TRASH directory, removes the .vimrc file from the home directory, and deletes the .bashrc statement using sed.

Makefile

The makefile runs both the linux.sh and cleanup.sh scripts, with linux.sh having a cleanup.sh dependency and cleanup.sh running first. Simply type "make" while in the bin directory to run it.

.vimrc

The .vimrc configures the terminal to have several added features, such as line numbering, autoindent, and a new color scheme.

.bashrc_custom

The .bashrc_custom assigns several aliases to make commands quicker to type out and introduces a couple of functions to tar directories and untar them.
