#Parametri
Param(
  [string]$foldername = ""
)
$isit = Test-Path $foldername
#Tarkistetaan onko folderi kotona
if ($isit -eq $true) {
  #Luodaan muuttuja tiedostolle, johon nimet kirjoitetaan
  $filu = Join-Path -Path $home -ChildPath "files.txt"
  #Haetaan kansiossa olevien tiedostojen nimet
  $names = Get-ChildItem -Path $foldername -File 
  $names| Select-Object Name | Out-File -FilePath $filu
  #Lasketaan montako tiedostoa ja annetaan kuittaus
  Write-Host $names.count "filenames were written to file $filu"
}
#muussa tapauksessa ilmoitetaan, että jotain meni vikaan
else {
  Write-Host "Sorry, $foldername does not exist."
}