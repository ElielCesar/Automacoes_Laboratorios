# Renomear todas as maquinas antes de colocar no dominio.

$computers = "10.38.1.1","10.38.1.2","10.38.1.3","10.38.1.4","10.38.1.5","10.38.1.6","10.38.1.7","10.38.1.8",
"10.38.1.9","10.38.1.10","10.38.1.11","10.38.1.12","10.38.1.13","10.38.1.14","10.38.1.15","10.38.1.16",
"10.38.1.17","10.38.1.18","10.38.1.19","10.38.1.20","10.38.1.21","10.38.1.22","10.38.1.23","10.38.1.24",
"10.38.1.25","10.38.1.26","10.38.1.27","10.38.1.28","10.38.1.29","10.38.1.30","10.38.1.31","10.38.1.32",
"10.38.1.33","10.38.1.34","10.38.1.35","10.38.1.36","10.38.1.37","10.38.1.38","10.38.1.39","10.38.1.40"


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
$credenciais = Get-Credential Administrador

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
