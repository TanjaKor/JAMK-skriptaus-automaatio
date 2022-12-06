#!/bin/bash

#kysytään mikä ohjelma halutaan asentaa
read -p "Minkä ohjelman haluat asentaa? " ohjelma
#asennetaan
sudo apt-get -y install "${ohjelma}" > /dev/null 2>&1
#jos homma roger -> "onnistui" ja exit
if [ $? -eq 0 ]
then
  echo "homma roger"
  exit
#jos ei roger -> exit koodi 111 ja viesti "ei onnistunut"
else
  echo "asennus ei onnistunut"
  exit 111
fi 
