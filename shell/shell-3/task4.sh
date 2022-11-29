#!/bin/bash

#luodaan funktio
count_object() {
  #alustetaan erikseen tyhjä muuttuja ensin
  local sisalto=""
  #työnnetään annettu lista muuttujaan
  local -n polku_lista=$1
  #käydään loopilla läpi jokainen annettu polku
  for x in "${!polku_lista[@]}"
    do  
      #command substitutella työnnetään annettu polku pipeen
      sisalto=$(ls "${polku_lista[x]}" | wc -w)     
      #printataan lukumäärä
      echo "Polussa ${polku_lista[x]} on ${sisalto} objektia."   
    done
  }
#kysytään polku
read -p "Anna polut, voit syöttää useampia välilyönnin kanssa: " -a lista
#kutsutaan funktiota ja annetaan argumentiksi annettu polku
count_object lista