#!/bin/bash

#luodaan funktio
count_object() {
  #luodaan lokaali muuttuja (alustettu erikseen tyhjäksi ensin, jotta vältytään ei-halutuilta lopputuloksilta)
  local sisalto=""
  sisalto=$(ls | wc -w)
  #printataan lukumäärä
  echo "${sisalto}"
}
#kutsutaan funktiota
count_object