# Objetivo: Obter quais maquinas estão online na rede e com WinRM escutando.

# Descomente a lista conforme o laboratório desejado

$computers = "aqs-la01","aqs-la02","aqs-la03","aqs-la04","aqs-la05","aqs-la06","aqs-la07","aqs-la08",
"aqs-la09","aqs-la10","aqs-la11","aqs-la12","aqs-la13","aqs-la14","aqs-la15","aqs-la16",
"aqs-la17","aqs-la18","aqs-la19","aqs-la20","aqs-la21","aqs-la22","aqs-la23","aqs-la24",
"aqs-la25","aqs-la26","aqs-la27","aqs-la28","aqs-la29","aqs-la30","aqs-la31","aqs-la32",
"aqs-la33","aqs-la34","aqs-la35","aqs-la36","aqs-la37","aqs-la38","aqs-la39","aqs-la40"

<# Segundo Bloco de Laboratorios - Caso precise usar comente o primeiro e descomente esse.
$computers = "aqs-lb01","aqs-lb02","aqs-lb03","aqs-lb04","aqs-lb05","aqs-lb06","aqs-lb07","aqs-lb08",
"aqs-lb09","aqs-lb10","aqs-lb11","aqs-lb12","aqs-lb13","aqs-lb14","aqs-lb15","aqs-lb16",
"aqs-lb17","aqs-lb18","aqs-lb19","aqs-lb20","aqs-lb21","aqs-lb22","aqs-lb23","aqs-lb24",
"aqs-lb25","aqs-lb26","aqs-lb27","aqs-lb28","aqs-lb29","aqs-lb30","aqs-lb31","aqs-lb32"
#>

<# Terceiro Bloco de Laboratorios - Caso precise usar comente o primeiro e descomente esse.
$computers = "aqs-ld01","aqs-ld02","aqs-ld03","aqs-ld04","aqs-ld05","aqs-ld06","aqs-ld07","aqs-ld08",
"aqs-ld09","aqs-ld10","aqs-ld11","aqs-ld12","aqs-ld13","aqs-ld14","aqs-ld15","aqs-ld16",
"aqs-ld17","aqs-ld18","aqs-ld19","aqs-ld20","aqs-ld21","aqs-ld22","aqs-ld23","aqs-ld24",
"aqs-ld25","aqs-ld26"
#>

$credencial = Get-Credential Administrador
$online = @()
$offline = @()

Foreach($pc in $computers) {
    if (Test-Connection -BufferSize 32 -Count 1 -ComputerName $pc -Quiet) {

         if (Test-WSMan -ComputerName $pc -ErrorAction SilentlyContinue ) {  $online += $pc }
         
         else  { $offline += $pc }

}

else { $offline += $pc }

}

Write-Output "Os Seguintes computadores estao ativos e escutando: " $online 
Write-Output "Total de computadores ativos e escutando: " $online.Count
Write-Output " "
Write-Output "Os Seguintes computadores estao offline ou nao responderam: " $offline
timeout 200