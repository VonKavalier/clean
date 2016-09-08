#! /bin/sh 

echo "----------------------------"
echo "| Starting cleaning script |"
echo "----------------------------"

echo "\n- Clearing cache of removed packages"
sudo apt-get autoclean

echo "\n- Clearing entire cache"
sudo apt-get clean

echo "\n- Removing unnecessary dependencies"
sudo apt-get autoremove

# It will tell if nothing is found with the grep, don't worry it's ok. Relax
echo "\n- Removing obsolete configuration files"
sudo dpkg --purge $(COLUMNS=200 dpkg -l | grep "^rc" | tr -s ' ' | cut -d ' ' -f 2)

echo "\n- Removing Trash"
sudo rm -r -f ~/.local/share/Trash/*/*

echo "\n- Removing thumbnails"
sudo rm -rf ~/.thumbnails/normal/*

echo "\n* Thank you for trusting our cleaning team ! :) Have a good day !"
