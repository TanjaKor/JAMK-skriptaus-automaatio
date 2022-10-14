#Luodaan funktio
function Get-FiluInfo {
  #Haetaan kotikansion tiedostot ja suodatetaan muut pois kuin vaaditut nimi ja pituus 
  Get-ChildItem -Path $home -File | Format-Table Name, Length, LastWriteTime
}


