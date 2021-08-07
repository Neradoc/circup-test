#!/bin/bash
DIR=`dirname $0`
BOARD="$DIR"/CIRCUITPY-auto

rm -rf "$BOARD"
cp -r "$DIR"/board-auto "$BOARD"

#
echo -e "\n####################################################################\n"
python3 circup.py --path "$BOARD" install --no-auto
echo -e "\n####################################################################\n"
python3 circup.py --path "$BOARD" install --auto
#
rm -rf "$BOARD"/lib
#
echo -e "\n####################################################################\n"
python3 circup.py --path "$BOARD" install --auto --auto-file "other_code.py"

