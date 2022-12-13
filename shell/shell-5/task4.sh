#!/bin/bash 

# luodaan sed, jolla haetaan ja muutetaan portit (korvataan/numerot 80(muita ei ole)/annettu argumentti) 
sed -ri "s/80/$1/" example.conf
#luodaan sed, jolla haetaan ja muutetaan index.html (korvataan/index.html teksti/2. annettu argumentti)
sed -ri "s/index.html/$2/" example.conf