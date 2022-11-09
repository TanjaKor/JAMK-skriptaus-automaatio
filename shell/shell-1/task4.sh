#!/bin/bash
#kysytään polku minne halutaan tiedosto kopioitavan
read -p "Anna polku minne kopioidaan:" polku
#kysytään polku tiedostolle, joka halutaan kopioida, esim /home/user/ttc2060/shell/shell-1/task1.sh
read -p "Anna tiedostopolku mikä kopioidaan:" file
#kopioidaan
cp "${file}" "${polku}"
#kerrotaan että homma onnistui
echo "copied the ${file} to ${polku}!"
