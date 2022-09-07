#ensin muuttujille arvot
$numa = Read-Host "Anna eka numero"
$numb = Read-Host "Anna toka numero"
#muutetaan stringit integereiksi
$num1 = [int]($numa)
$num2 = [int]($numb)
#tein yhden huvikseen näin
$sum = $num1 + $num2
#loput laitoin samalle riville ja säästin koodia :)
Write-Host "Summa on" $sum"`nErotus on" ($num1 - $num2)"`nTulo on" ($num1 * $num2)"`nOsamäärä on" ($num1 / $num2)