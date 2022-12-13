#!/bin/bash 

#Create a script that reads superhero.json file.
#Script prints hero names to the user who selects which heroes powers or secret identity he/she wants to see.
#Script prints the desired values to the user.
#Script will continue asking what to do until user gives some string to exit to script (exit perhaps?).
#Hints:
#any iterations structure
#jq command
sankarit=$(< superhero.json)
#jatketaan kunnes exit > loop
while [ "$valinta" != "exit" ]
do
  #tulostetaan kaikki supersankarit
  echo "${sankarit}" | jq ".members[].name"
  #käyttäjä valitsee sankarin
  read -p "Valitse sankarisi nro (1,2 tai 3), 4 lopetus: " nro
  #tarkistetaan halutaanko lopettaa
  if [ "${nro}" -eq 4 ]
  then
    break
   #jos ei niin vähennetään numerosta 1, jotta päästään oikeaan indexiin 
  else
    nro=$(( nro-1 ))
    #käyttäjä valitsee haluaako powers vai secret identityn 
    read -p "Valitse voimat tai identiteetti: " valinta
    #toimitaan sen mukaan
    case ${valinta} in
      voimat)
      #tulostellaan voimat
        echo "${sankarit}" | jq ".members[$nro].name, .members[$nro].powers"
        echo
        ;;
      identiteetti)
      #tulostellaan identiteetti
        echo "${sankarit}" | jq ".members[$nro].secretIdentity"
        echo
       ;;
    esac
  fi 
done