# Renomear todas as maquinas antes de colocar no dominio.

$computers = "10.38.3.1","10.38.3.2","10.38.3.3","10.38.3.4","10.38.3.5","10.38.3.6","10.38.3.7","10.38.3.8",
"10.38.3.9","10.38.3.10","10.38.3.11","10.38.3.12","10.38.3.13","10.38.3.14","10.38.3.15","10.38.3.16",
"10.38.3.17","10.38.3.18","10.38.3.19","10.38.3.20","10.38.3.21","10.38.3.22","10.38.3.23","10.38.3.24",
"10.38.3.25","10.38.3.26","10.38.3.27","10.38.3.28"

# O usuario é o Administrador local da maquina pois ainda nao existe dominio.
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

# A PARTE A SEGUIR SERA EXECUTADA DENTRO DE CADA HOST
Invoke-Command -ComputerName $online { 

$ip =  Get-WmiObject -Class win32_networkadapterconfiguration
$credenciais = Get-Credential Administrador

if ($ip.IPAddress -eq '10.38.3.1'){Rename-Computer -NewName 'aqs-ld01' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.2'){Rename-Computer -NewName 'aqs-ld02' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.3'){Rename-Computer -NewName 'aqs-ld03' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.4'){Rename-Computer -NewName 'aqs-ld04' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.5'){Rename-Computer -NewName 'aqs-ld05' -DomainCredential $credenciais; sleep 5; shutdown /r}

if ($ip.IPAddress -eq '10.38.3.6'){Rename-Computer -NewName 'aqs-ld06' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.7'){Rename-Computer -NewName 'aqs-ld07' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.8'){Rename-Computer -NewName 'aqs-ld08' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.9'){Rename-Computer -NewName 'aqs-ld09' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.10'){Rename-Computer -NewName 'aqs-ld10' -DomainCredential $credenciais; sleep 5; shutdown /r}

if ($ip.IPAddress -eq '10.38.3.11'){Rename-Computer -NewName 'aqs-ld11' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.12'){Rename-Computer -NewName 'aqs-ld12' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.13'){Rename-Computer -NewName 'aqs-ld13' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.14'){Rename-Computer -NewName 'aqs-ld14' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.15'){Rename-Computer -NewName 'aqs-ld15' -DomainCredential $credenciais; sleep 5; shutdown /r}

if ($ip.IPAddress -eq '10.38.3.16'){Rename-Computer -NewName 'aqs-ld16' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.17'){Rename-Computer -NewName 'aqs-ld17' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.18'){Rename-Computer -NewName 'aqs-ld18' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.19'){Rename-Computer -NewName 'aqs-ld19' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.20'){Rename-Computer -NewName 'aqs-ld20' -DomainCredential $credenciais; sleep 5; shutdown /r}

if ($ip.IPAddress -eq '10.38.3.21'){Rename-Computer -NewName 'aqs-ld21' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.22'){Rename-Computer -NewName 'aqs-ld22' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.23'){Rename-Computer -NewName 'aqs-ld23' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.24'){Rename-Computer -NewName 'aqs-ld24' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.25'){Rename-Computer -NewName 'aqs-ld25' -DomainCredential $credenciais; sleep 5; shutdown /r}

if ($ip.IPAddress -eq '10.38.3.26'){Rename-Computer -NewName 'aqs-ld26' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.27'){Rename-Computer -NewName 'aqs-ld27' -DomainCredential $credenciais; sleep 5; shutdown /r}
if ($ip.IPAddress -eq '10.38.3.28'){Rename-Computer -NewName 'aqs-ld28' -DomainCredential $credenciais; sleep 5; shutdown /r}

} -Credential $credencial
timeout 7
