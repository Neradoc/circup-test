#!/bin/bash
DIR=`dirname $0`
TOKEN=`python3 -c "import uuid; print(uuid.uuid4())"`
#
# echo -e "#####################################################################"
# echo -e "# Warning this test suite will modify your bundles list !"
# while true; do
# 	read -p "# Do you wish to continue ?" yn
# 	case $yn in
# 		[Yy]* ) break;;
# 		[Nn]* ) exit;;
# 		* ) echo "Please answer yes or no.";;
# 	esac
# done
#
echo -e "\n# Here are your bundles ###########################################\n"
circup bundle-show
#
python3 "$DIR/helper_bundles.py" save "$TOKEN"
#
echo -e "\n# Invalid bundle path ###########################################\n"
circup bundle-add toto
#
echo -e "\n# Non existing bundle ###########################################\n"
circup bundle-add Neradoc/NOTEXISTS
#
echo -e "\n# Not actually a bundle ###########################################\n"
circup bundle-add Neradoc/circup
#
echo -e "\n# Not actually a bundle ###########################################\n"
circup bundle-add Neradoc/circup
#
echo -e "\n# Remove Layouts for test ###########################################\n"
circup bundle-remove Neradoc/Circuitpython_Keyboard_Layouts
#
echo -e "\n# Add back Layouts ###########################################\n"
circup bundle-add Neradoc/Circuitpython_Keyboard_Layouts
#
echo -e "\n# Remove Layouts #########################################\n"
circup bundle-remove Neradoc/Circuitpython_Keyboard_Layouts
#
echo -e "\n# Show all of that ###########################################\n"
circup bundle-show
#
python3 "$DIR/helper_bundles.py" restore "$TOKEN"
python3 "$DIR/helper_bundles.py" clean "$TOKEN"
#
