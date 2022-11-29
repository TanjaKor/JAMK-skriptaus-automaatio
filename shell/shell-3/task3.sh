#!/bin/bash

#luodaan funktio
count_object() {
  #alustetaan erikseen tyhjä muuttuja ensin, jotta vältytään ei-halutuilta lopputuloksilta)
  local sisalto=""
  #command substitutella työnnetään annettu polku pipeen
  sisalto=$(ls "$1" | wc -w)
  #printataan lukumäärä
  echo "${sisalto}"
}
#kysytään polku
read -p "Anna polku: " polku
#kutsutaan funktiota ja annetaan argumentiksi annettu polku
count_object "${polku}"