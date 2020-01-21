# Inserir todas mas maquinas no dominio automaticamente.
# Requisitos: Poweshell 5 ou superior, WinRM configurado e ativado, Firewall do Windows Desativado.


<#$computers = "10.38.1.1","10.38.1.2","10.38.1.3","10.38.1.4","10.38.1.5","10.38.1.6","10.38.1.7","10.38.1.8",
"10.38.1.9","10.38.1.10","10.38.1.11","10.38.1.12","10.38.1.13","10.38.1.14","10.38.1.15","10.38.1.16",
"10.38.1.17","10.38.1.18","10.38.1.19","10.38.1.20","10.38.1.21","10.38.1.22","10.38.1.23","10.38.1.24",
"10.38.1.25","10.38.1.26","10.38.1.27","10.38.1.28","10.38.1.29","10.38.1.30","10.38.1.31","10.38.1.32",
"10.38.1.33","10.38.1.34","10.38.1.35","10.38.1.36","10.38.1.37","10.38.1.38","10.38.1.39","10.38.1.40"#>


$computers = "10.38.3.1","10.38.3.2","10.38.3.3","10.38.3.4","10.38.3.5","10.38.3.6","10.38.3.7","10.38.3.8",
"10.38.3.9","10.38.3.10","10.38.3.11","10.38.3.12","10.38.3.13","10.38.3.14","10.38.3.15","10.38.3.16",
"10.38.3.17","10.38.3.18","10.38.3.19","10.38.3.20","10.38.3.21","10.38.3.22","10.38.3.23","10.38.3.24",
"10.38.3.25","10.38.3.26","10.38.3.27","10.38.3.28"

# Aqui tem que ser o admin local pois ainda nao foi inserida no dominio.
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


Invoke-Command -ComputerName $online { 

Add-Computer -DomainName 'ifro.local' -Credential ifro.local\2171370

} -Credential $credencial
timeout 3
