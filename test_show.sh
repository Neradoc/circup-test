#!/bin/bash
DIR=`dirname $0`
BOARD="$DIR"/CIRCUITPY

rm -rf "$BOARD"/lib
mkdir "$BOARD"/lib

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
python3 circup.py --path "$DIR"/CIRCUITPY-badboot list
#
echo -e "\n# NO BOOT ##########################################################\n"
python3 circup.py --path "$DIR"/CIRCUITPY-noboot list
#
echo -e "\n# BAD BOOT FORCE VERSION ###########################################\n"
python3 circup.py --path "$DIR"/CIRCUITPY-badboot --cp 6.3.0 list
#
echo -e "\n# NO BOOT FORCE VERSION ############################################\n"
python3 circup.py --path "$DIR"/CIRCUITPY-noboot --cp 6.3.0 list
#
