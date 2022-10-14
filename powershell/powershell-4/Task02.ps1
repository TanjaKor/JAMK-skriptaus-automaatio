#Luodaan funktio
function Get-FiluInfo2 {
  #Funktiolla on parametri mikä pitää muistaa antaa funktiota kutsuttaessa terminaalista
  Param($ext)
  #Haetaan kotikansion sisältö annetulla päätteellä ja näytetään halutut tiedot terminaalissa
  Get-ChildItem $HOME | Where-Object {$_.Extension -eq $ext} | Select-Object Name, Length, LastWriteTime
}