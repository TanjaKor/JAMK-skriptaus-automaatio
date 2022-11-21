#!/bin/bash
#Luo skripti joka luo uuden käyttäjän (ilman salasanaa), ja kysyy käyttäjältä käyttäjänimen
#ennen kuin luot käyttäjän, tarkista onko kys käyttäjää olemassa
#luo jos ei ole, muista luoda myös kotihakemisto ja oletustulkki bashiksi
#jos on, ei luoda!

#miten huomioit sudo oikeudet??
#kysytään käyttäjänimi
read -p "Minkä käyttäjänimen haluat luoda? " username
#tarkistetaan onko olemassa
if id -u "${username}" 
#jos on,kerrotaan, ettei luoda, koska on jo olemassa
then
  echo "Ei luoda käyttäjää ${username}, koska se on jo olemassa"
#jos ei ole, luodaan tunnus kotihakemistoineen ja oletustulkiksi bash
else
  sudo useradd -m -s /bin/bash "${username}"
  echo "${username} on luotu"
fi