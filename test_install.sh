#!/bin/bash
DIR=`dirname $0`
BOARD="$DIR"/CIRCUITPY-install

rm -rf "$BOARD"
cp -r "$DIR"/board-default "$BOARD"

#
echo -e "\n####################################################################\n"
python3 circup.py --path "$BOARD" install adafruit_magtag adafruit_nunchuk
#
echo -e "\n####################################################################\n"
python3 circup.py --path "$BOARD" install adafruit_si7021 circuitpython_schedule
#
echo -e "\n####################################################################\n"
python3 circup.py --path "$BOARD" list
#
rm -rf "$BOARD"/lib
cp -r "$DIR"/lib-test-mpy "$BOARD"/lib
#
echo -e "\n####################################################################\n"
python3 circup.py --path "$BOARD" list
echo -e "\n####################################################################\n"
python3 circup.py --path "$BOARD" update
echo -e "\n####################################################################\n"
python3 circup.py --path "$BOARD" list
#
echo -e "
####################################################################
# Bad module names
####################################################################
"
python3 circup.py --path "$BOARD" install adafuit_magtag portalbase
