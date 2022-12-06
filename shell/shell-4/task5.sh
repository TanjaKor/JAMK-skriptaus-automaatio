#!/bin/bash 

set -x

#Create a script that has 3 functions: mk_folder, download_image and change_perm.
#mk_folder function asks a new folder path from the user and creates the folder.
#download_image function downloads the following image to the previously created directory and renames it as a linux-tux.png: image
#change_perm function sets the folder and image permissions in a way that only owner has rights to them (rwx).
#Every possible variable substitution and command execution must be shown in the terminal during the execution.

#luodaan mk_folder funktio
mk_folder() {
  #kysy uusi polku uudelle kansiolle
  read -p "Minne ja minkä niminen kansio luodaan? " kansio
  #luo uusi kansio
  sudo mkdir "${kansio}"
}
#luodaan download_image funktio
download_image() {
  #lataa kuvan yo kansioon ja nimeää sen uudelleen linux-tux.png:ksi
  cd "${kansio}"
  sudo wget -O linux-tux.png https://student.labranet.jamk.fi/~pekkju/script/tux.png
}

#luodaan change_perm funktio
change_perm() {
  #tarkistetaan kuka on käyttäjä
  local kayttaja=""
  kayttaja=$(whoami)
  #vaihdetaan kansion omistaja käyttäjäksi
  sudo chown "${kayttaja}" "${kansio}"
  #muuttaa käyttöluvat vain omistajalle
  sudo chmod -R 700 "${kansio}"
}
#kutsutaan funktiot
mk_folder
download_image
change_perm