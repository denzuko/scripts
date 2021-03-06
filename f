#!/bin/sh

######################################################################
# @author      : Gavin Jaeger-Freeborn (gavinfreeborn@gmail.com)
# @file        : f.sh
# @created     : Fri 17 Jan 2020 09:35:29 AM MST
#
# @description : fzf shortcuts
######################################################################

# TODO: automate adding these
f() {
	case "$*" in
	d)
		fzedit.sh ~/Documents/
		;;
	D)
		fzedit.sh ~/Downloads/
		;;
	v)
		fzedit.sh ~/.vim/
		;;
	p)
		fzedit.sh ~/Programming/
		;;
	w)
		fzedit.sh ~/.local/Dropbox/DropsyncFiles/vimwiki/
		;;
	s)
		scriptedit.sh
		;;
	*)
		fzedit.sh .
		;;
	esac
}

f "$*"
# vim: set tw=78 ts=2 et sw=2 sr:
