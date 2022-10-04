#määritellään parametrit
param(
  [string]$foldername="",
  [string]$filename=""
)
#tarkistetaan onko kyseistä tiedostoa olemassa (luodaan filepath muuttuja, jota 
#voidaan tarvittaessa käyttää tiedoston luonnissa)
$filepath = Join-Path $foldername -ChildPath $filename 
$isfile = Test-Path $filepath

#jos on, tulee viesti
if ($isfile) {
    Write-Host "Yeay, there is $filename in $foldername"
  }
#jos kansiota ei ole, niin kysytään halutaanko sellainen luoda
else {
  $create = Read-Host "Create the file $filename? Yes/No"
  #jos kyllä, niin luodaan, muuten skripti keskeytyy
  if ($create -eq "Yes") {
    New-Item -Path $filepath -ItemType File
  }
}