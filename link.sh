#!/bin/sh

lnd() {
	DOTFILE=$1
	PREFIX=`realpath --relative-to="$HOME" .`
	echo "Linking .$DOTFILE"
	if [ -f ~/.$DOTFILE ]; then
		echo "  -> old file saved as .${DOTFILE}.old"
		mv ~/.$DOTFILE ~/.${DOTFILE}.old
	fi
	ln -s "$PREFIX/$DOTFILE" ~/.$DOTFILE
}

lnd vimrc
lnd xprofile
lnd xbindkeysrc
lnd zshrc
lnd Xresources

