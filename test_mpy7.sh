#!/bin/bash
DIR=`dirname $0`

rm -rf "$DIR"/CIRCUITPY-v6/
rm -rf "$DIR"/CIRCUITPY-v7/
cp -r "$DIR"/board-v6 "$DIR"/CIRCUITPY-v6
cp -r "$DIR"/board-v7 "$DIR"/CIRCUITPY-v7
cp -r "$DIR"/lib-test-mpy "$DIR"/CIRCUITPY-v6/lib
cp -r "$DIR"/lib-test-mpy "$DIR"/CIRCUITPY-v7/lib

#
echo -e "
####################################################################
# Circuitpython version 6 - list, update all, list
# Expected (new versions numbers from online)
adafruit_binascii  1.0.5    *****   Minor Version
adafruit_button    0.5.5    *****   Major Version
adafruit_lifx      1.10.0   *****   MPY Format
neopixel           6.1.3    *****   MPY Format
####################################################################
"
python3 circup.py --path "$DIR"/CIRCUITPY-v6 list
echo -e "\n#\n"
python3 circup.py --path "$DIR"/CIRCUITPY-v6 update --all
echo -e "\n#\n"
python3 circup.py --path "$DIR"/CIRCUITPY-v6 list
#

echo -e "
####################################################################
# Circuitpython version 7 - list, update all, list
# Expected (new versions numbers from online)
adafruit_binascii  1.0.5    *****   Minor Version
adafruit_button    0.5.5    *****   Major Version
adafruit_dotstar   2.0.4    *****   MPY Format
adafruit_wsgi      1.1.4    *****   MPY Format
####################################################################
"
python3 circup.py --path "$DIR"/CIRCUITPY-v7 list
echo -e "\n#\n"
python3 circup.py --path "$DIR"/CIRCUITPY-v7 update --all
echo -e "\n#\n"
python3 circup.py --path "$DIR"/CIRCUITPY-v7 list
#
