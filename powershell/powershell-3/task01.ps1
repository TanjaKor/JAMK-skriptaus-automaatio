#määritellään parametri
param(
  [string]$foldername=""
)
#tarkistetaan onko kyseistä polkua olemassa
$isit = Test-Path $foldername
#jos on, niin haetaan tiedostojen ja kansioiden määrä ja tulostetaan ulos niiden nimet
if ($isit) {
  $folders = Get-ChildItem -Path $foldername
  $count = $folders.Count
  Write-Host "$count files in the folder $foldername"
  Get-ChildItem -Path $foldername | Format-Table Name
  }
#jos ei ole, niin tulostetaan virheviesti
else {
  Write-Host "Sorry, $foldername does not exist."
}