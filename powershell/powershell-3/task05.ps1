#määritellään parametrit
param(
  [string]$foldername="",
  [string]$newname = ""
  )
#testataan onko haluttu kansio kotona
if ((Test-Path $foldername)) {
  #jos on, lasketaan sen tiedostomäärä
  $files = Get-ChildItem -Path $foldername | Where-Object { $_.PsIsContainer -eq $false}
  $filecount = $files.Count
  #kysytään saako vaihtaa nimet
  $saako = Read-Host ("All $filecount files will be renamed with name $newname. Yes/No")
  if ($saako -eq "Yes") {
    #jos saa, niin vaihdetaan työskentelykansio oikeaksi ja muutetaan loopilla nimet oikeaksi
    #jos ei, niin skripti katkeaa automatic
    Set-Location $foldername
    $count = 1
    foreach ($file in $files) {
      Rename-Item $file -NewName $newname$count".txt"
      $count++
    }
    }
  }
  #jos kansiota ei löydy, annetaan viesti, ettei ole ja skripti katkeaa automatic
else {
  Write-Output ("Ei löydy")
}
