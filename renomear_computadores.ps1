
# Objetivo: Renomear todos os computadores baseados no IP de cada um.

# Descomente a lista conforme o laboratório desejado.

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

#Altere o nome das maquinas conforme o ip que ela tiver
Invoke-Command -ComputerName $online { 

$ip =  Get-WmiObject -Class win32_networkadapterconfiguration
$credenciais = Get-Credential ifro.local\USUARIO_DOMINIO_AQUI

if ($ip.IPAddress -eq '10.38.1.1'){Rename-Computer -NewName 'aqs-la01' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.2'){Rename-Computer -NewName 'aqs-la02' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.3'){Rename-Computer -NewName 'aqs-la03' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.4'){Rename-Computer -NewName 'aqs-la04' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.5'){Rename-Computer -NewName 'aqs-la05' -DomainCredential $credenciais; sleep 5; shutdown /r}

if ($ip.IPAddress -eq '10.38.1.6'){Rename-Computer -NewName 'aqs-la06' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.7'){Rename-Computer -NewName 'aqs-la07' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.8'){Rename-Computer -NewName 'aqs-la08' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.9'){Rename-Computer -NewName 'aqs-la09' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.10'){Rename-Computer -NewName 'aqs-la10' -DomainCredential $credenciais; sleep 5; shutdown /r}

if ($ip.IPAddress -eq '10.38.1.11'){Rename-Computer -NewName 'aqs-la11' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.12'){Rename-Computer -NewName 'aqs-la12' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.13'){Rename-Computer -NewName 'aqs-la13' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.14'){Rename-Computer -NewName 'aqs-la14' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.15'){Rename-Computer -NewName 'aqs-la15' -DomainCredential $credenciais; sleep 5; shutdown /r}

if ($ip.IPAddress -eq '10.38.1.16'){Rename-Computer -NewName 'aqs-la16' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.17'){Rename-Computer -NewName 'aqs-la17' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.18'){Rename-Computer -NewName 'aqs-la18' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.19'){Rename-Computer -NewName 'aqs-la19' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.20'){Rename-Computer -NewName 'aqs-la20' -DomainCredential $credenciais; sleep 5; shutdown /r}

if ($ip.IPAddress -eq '10.38.1.21'){Rename-Computer -NewName 'aqs-la21' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.22'){Rename-Computer -NewName 'aqs-la22' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.23'){Rename-Computer -NewName 'aqs-la23' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.24'){Rename-Computer -NewName 'aqs-la24' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.25'){Rename-Computer -NewName 'aqs-la25' -DomainCredential $credenciais; sleep 5; shutdown /r}

if ($ip.IPAddress -eq '10.38.1.26'){Rename-Computer -NewName 'aqs-la26' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.27'){Rename-Computer -NewName 'aqs-la27' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.28'){Rename-Computer -NewName 'aqs-la28' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.29'){Rename-Computer -NewName 'aqs-la29' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.30'){Rename-Computer -NewName 'aqs-la30' -DomainCredential $credenciais; sleep 5; shutdown /r}

if ($ip.IPAddress -eq '10.38.1.31'){Rename-Computer -NewName 'aqs-la31' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.32'){Rename-Computer -NewName 'aqs-la32' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.33'){Rename-Computer -NewName 'aqs-la33' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.34'){Rename-Computer -NewName 'aqs-la34' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.35'){Rename-Computer -NewName 'aqs-la35' -DomainCredential $credenciais; sleep 5; shutdown /r}

if ($ip.IPAddress -eq '10.38.1.36'){Rename-Computer -NewName 'aqs-la36' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.37'){Rename-Computer -NewName 'aqs-la37' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.38'){Rename-Computer -NewName 'aqs-la38' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.39'){Rename-Computer -NewName 'aqs-la39' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.1.40'){Rename-Computer -NewName 'aqs-la40' -DomainCredential $credenciais; sleep 5; shutdown /r}


} -Credential $credencial
timeout 7
