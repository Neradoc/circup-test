#!/bin/bash
DIR=`dirname $0`
BOARD="$DIR"/CIRCUITPY-update-install

rm -rf "$BOARD"
cp -r "$DIR"/board-update-install "$BOARD"

#
echo -e "\n# TRY UPDATE ALL ###################################################\n"
circup --path "$DIR"/CIRCUITPY-update-install update --all
#

rm -rf "$BOARD"
cp -r "$DIR"/board-update-install "$BOARD"

#
echo -e "\n# TRY UPDATE Y/N ###################################################\n"
circup --path "$DIR"/CIRCUITPY-update-install update
#
