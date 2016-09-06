#! /bin/sh 


echo "------------------------------------"

echo "| Lancement du script de nettoyage |"

echo "------------------------------------"



echo "\n- Suppression du cache des paquets supprimés"
sudo apt-get autoclean



echo "\n- Suppression de tout le cache"

sudo apt-get clean



echo "\n- Suppression des dépendances inutiles"

sudo apt-get autoremove



echo "\n- Suppression des fichiers de configuration obsolètes"

sudo dpkg --purge $(COLUMNS=200 dpkg -l | grep "^rc" | tr -s ' ' | cut -d ' ' -f 2)



echo "\n- Suppression de la corbeille"

sudo rm -r -f ~/.local/share/Trash/*/*



echo "\n- Suppression des miniatures"

sudo rm -rf ~/.thumbnails/normal/*



echo "\n* Merci de faire confiance à notre équipe de nettoyage :) Bonne journée !"
