#määritellään parametrit
param(
  [string]$foldername="",
  [string]$filename=""
)
#tarkistetaan onko kyseistä kansiota olemassa
$isdir = Test-Path $foldername
#jos on, tarkistetaan tiedoston olemassaolo
if ($isdir) {
  #luodaan tiedostolle oma polku ja testataan löytyy sitä
  $isfile = Join-Path -Path $foldername -ChildPath $filename | Test-Path
  #jos on, niin tulostellaan onnistunut viesti
  if ($isfile){
    Write-Host "Yeay, there is $filename in $foldername"
  }
  #jos fileä ei löydy, tulostetaan virheviesti
  else{
    Write-Host "Sorry, $filename is not found"
  }
  }
#jos kansiota ei ole, niin tulostetaan virheviesti
else {
  Write-Host "Sorry, $filename in the $foldername does not exist."
}