#kysytään ensin mistä halutaan etsiä 
$kansio = Read-Host "Mistä haluat tietoa?" 
#tulostetaan tulos Get-ChildItemin avulla
write-host "$((Get-ChildItem $kansio).count) files found at $kansio"