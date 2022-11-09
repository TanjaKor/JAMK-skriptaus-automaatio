#!/bin/bash
#kysytään polku
read -p "Anna polku:" polku
#lasketaan tiedostot ja kansiot
ls ${polku} | wc -l