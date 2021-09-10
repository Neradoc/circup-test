#!/bin/bash
DIR=`dirname $0`
BOARD="$DIR"/CIRCUITPY-auto

rm -rf "$BOARD"
cp -r "$DIR"/board-auto "$BOARD"

#
echo -e "\n####################################################################"
echo -e "# NO AUTO\n"
circup --path "$BOARD" install --no-auto
echo -e "\n####################################################################"
echo -e "# AUTO 1\n"
circup --path "$BOARD" install --auto
#
rm -rf "$BOARD"/lib
#
echo -e "\n####################################################################"
echo -e "# AUTO 2\n"
circup --path "$BOARD" install --auto --auto-file "other_code.py"
