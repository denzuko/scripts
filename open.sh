#!/usr/bin/env sh

######################################################################
# @author      : Gavin Jaeger-Freeborn (gavinfreeborn@gmail.com)
# @file        : open.sh
# @created     : Tue 21 Jan 2020 02:54:56 PM MST
#
# @description : command for opening files
######################################################################
OPENER="xdg-open"

# define a custom 'open' command
# This command is called when current file is not a directory. You may want to
# use either file extensions and/or mime types here. Below uses an editor for
# text files and a file opener for the rest.
case $(file --mime-type "$*" -b) in
  application/vnd.openxmlformats-officedocument.spreadsheetml.sheet) sc-im "$*";;
  text/*) $EDITOR "$*";;
  *) for f in "$@"; do setsid "${OPENER}" "${f}" > /dev/null 2> /dev/null & done;;
esac
# vim: set tw=78 ts=2 et sw=2 sr:
