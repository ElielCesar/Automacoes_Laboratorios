#Objetivo: Ativar e Configurar o wsman/psremoting para acesso remoto.

# ATENCAO!! Altere os parametros necessarios.

#execute o comando abaixo manualmente no powershell como adm depois rode o scritp.
#Set-ExecutionPolicy remotesigned -Force

$versao = $PSVersionTable.PSVersion.Major

if ($versao -ge 4 ) { 

#definir senha para o usuario Administrador e ativa-lo
net user Administrador SENHA-AQUI /ACTIVE:YES

#habilitar psremoting
Enable-PSRemoting -Force

#setar o host como confiavel no wsman
Set-Item WSMan:\localhost\Client\TrustedHosts * -Force

#reiniciar o serviço winrm
Restart-Service WinRM

Test-WSMan -ComputerName seu_servidor_OU_computadordecontrole_aqui

Write-Output ""
Write-Output "OK Tudo pronto para usar o PSRemoting"

Write-Host "Reiniciando o Computador em 20 segundos para efetivar as configuracoes!!"
timeout 20
shutdown -r
}

else {
    Write-Host "Sua versao eh menor que 4, atualize sua versao do PowerShell"
    timeout 20
}