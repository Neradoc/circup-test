#!/bin/bash
DIR=`dirname $0`

rm -rf "$DIR"/CIRCUITPY-v6/
rm -rf "$DIR"/CIRCUITPY-v7/
cp -r "$DIR"/board-v6 "$DIR"/CIRCUITPY-v6
cp -r "$DIR"/board-v7 "$DIR"/CIRCUITPY-v7
cp -r "$DIR"/lib-all7 "$DIR"/CIRCUITPY-v6/lib
cp -r "$DIR"/lib-all6 "$DIR"/CIRCUITPY-v7/lib

#
echo -e "####################################################################"
circup --path "$DIR"/CIRCUITPY-v6 list
#
echo -e "\n####################################################################\n"
circup --path "$DIR"/CIRCUITPY-v7 list
#
