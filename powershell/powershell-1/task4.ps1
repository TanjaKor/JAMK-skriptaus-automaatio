#luodaan lista
$names = "Hermanni", "Jooseppi", "Hillevi", "Uolevi", "Tuula", "Maisa", "Mirjami"
#tulostellaan listan alkioiden lukumäärä
Write-Host "There are" ($names.count) "names:"
#tulostellaan lista alekkain
Write-Host $names -Separator "`n"
#tulostellaan listan eka ja vika nimi
Write-Host "The first name in the list is" $names[0] "and the last" $names[6]
