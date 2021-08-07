#!/bin/bash
DIR=`dirname $0`
BOARD="$DIR"/CIRCUITPY-show

rm -rf "$BOARD"
cp -r "$DIR"/board-default "$BOARD"

#
echo -e "\n# INVALID BOARD DIRECTORY ##########################################\n"
python3 circup.py --path "" show
#
echo -e "\n# NON EXISTING BOARD DIRECTORY #####################################\n"
python3 circup.py --path /dev/null show
#
echo -e "\n# NORMAL BOARD DIRECTORY ###########################################\n"
python3 circup.py --path "$BOARD" show
#
echo -e "\n# BAD BOOT #########################################################\n"
python3 circup.py --path "$DIR"/board-badboot list
#
echo -e "\n# NO BOOT ##########################################################\n"
python3 circup.py --path "$DIR"/board-noboot list
#
echo -e "\n# BAD BOOT FORCE VERSION ###########################################\n"
python3 circup.py --path "$DIR"/board-badboot --cp 6.3.0 list
#
echo -e "\n# NO BOOT FORCE VERSION ############################################\n"
python3 circup.py --path "$DIR"/board-noboot --cp 6.3.0 list
#
