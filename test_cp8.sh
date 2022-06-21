#!/bin/bash
DIR=`dirname $0`

rm -rf "$DIR"/CIRCUITPY-v8/
cp -r "$DIR"/board-v8 "$DIR"/CIRCUITPY-v8
cp -r "$DIR"/lib-test-mpy "$DIR"/CIRCUITPY-v8/lib

#
echo -e "
####################################################################
# Circuitpython version 8 - list, update all, list
# Expected (new versions numbers from online)
adafruit_binascii  1.0.5    *****   Minor Version
adafruit_button    0.5.5    *****   Major Version
adafruit_dotstar   2.0.4    *****   MPY Format
adafruit_wsgi      1.1.4    *****   MPY Format
####################################################################
"
circup --path "$DIR"/CIRCUITPY-v8 list
echo -e "\n#\n"
circup --path "$DIR"/CIRCUITPY-v8 update --all
echo -e "\n#\n"
circup --path "$DIR"/CIRCUITPY-v8 list
#
