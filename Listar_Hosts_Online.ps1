# Objetivo: Obter quais maquinas estão online na rede e com WinRM escutando.

# altere a lista conforme o laboratório
$computers = "aqs-la01","aqs-la02","aqs-la03","aqs-la04","aqs-la05","aqs-la06","aqs-la07","aqs-la08",
"aqs-la09","aqs-la10","aqs-la11","aqs-la12","aqs-la13","aqs-la14","aqs-la15","aqs-la16",
"aqs-la17","aqs-la18","aqs-la19","aqs-la20","aqs-la21","aqs-la22","aqs-la23","aqs-la24",
"aqs-la25","aqs-la26","aqs-la27","aqs-la28","aqs-la29","aqs-la30","aqs-la31","aqs-la32",
"aqs-la33","aqs-la34","aqs-la35","aqs-la36","aqs-la37","aqs-la38","aqs-la39","aqs-la40"

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
