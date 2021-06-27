#!/bin/bash
DIR=`dirname $0`

rm -rf "$DIR"/CIRCUITPY-v6/lib
rm -rf "$DIR"/CIRCUITPY-v7/lib
cp -r "$DIR"/lib-all7 "$DIR"/CIRCUITPY-v6/lib
cp -r "$DIR"/lib-all6 "$DIR"/CIRCUITPY-v7/lib

#
echo -e "####################################################################"
python3 circup.py --path "$DIR"/CIRCUITPY-v6 list
#
echo -e "\n####################################################################\n"
python3 circup.py --path "$DIR"/CIRCUITPY-v7 list
#
