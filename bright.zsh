#!/usr/bin/zsh

# SETTINGS. DO CHANGE

# Bright colour scheme for (g)Vim
VIMCOLOUR='morning'

# Task Warrior
TWDARK="solarized-dark-256.theme"
# light-256 is easier to read then solarized-light-256
TWLIGHT="light-256.theme"

# Gnome Terminal
# Solarized-Light is the third profile in the gnome terminal profile list on my X220
SELECTPROFILE="Down Down Down"

# Tmux
TMUXDARK="256"
TMUXLIGHT="light"


# WORK CODE. DO NOT CHANGE.
read -k 1 "?Please make sure, that the Gnome Terminal Menubar is shown..."
echo ""

# Change (g)vim coloscheme
grep -q -i "colorscheme $VIMCOLOUR"  ~/.vimrc
if [ $? -ne 0 ]; then
	echo "Set (g)vim colorscheme '$VIMCOLOUR' ..."
	sed -i "/colorscheme/s/colorscheme .*/colorscheme $VIMCOLOUR/" ~/.vimrc
else
	echo "(gvim) colorscheme alread set to '$VIMCOLOUR' ..."
fi

# Change TaskWarrior and TashShell Colour Scheme
sed -i "s/^include .*\/$TWDARK/#include \/usr\/local\/share\/doc\/task\/rc\/$TWDARK/" ~/.taskrc
sed -i "s/^#include .*\/$TWLIGHT/include \/usr\/local\/share\/doc\/task\/rc\/$TWLIGHT/" ~/.taskrc
echo "TaskWarrior theme changed from '$TWDARK' to '$TWLIGHT' ..."

# change current terminal profile
# xdotool is a patch, but there is no way in gnome terminal to switch profiles
# from the command line
echo "key Alt+t p $SELECTPROFILE Return" | xdotool -
echo "Terminal profile set"

# Change TMUX Colours
sed -i "/@colors-solarized/s/$TMUXDARK/$TMUXLIGHT/" ~/.tmux.conf
echo "tmux colours changed from '$TMUXDARK' to '$TMUXLIGHT' ..."
echo "\tIf tmux is already running: Strg-Y I to reload"

echo ""
echo $0 "all set!"
