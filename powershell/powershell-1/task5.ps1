#Get commandilla haetaan lista ja .count metodilla lasketaan montako sovellusta on
Write-Host "There are" (Get-Command -CommandType Application).count "applications"