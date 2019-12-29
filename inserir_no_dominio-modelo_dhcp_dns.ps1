# Dicas para setar ip fixo, dhcp e inserir um pc ao dominio, eh preciso testar tudo antes.


# setando ip fixo - funciona no powershell 5 pra cima
New-NetIPAddress 10.10.10.1 -InterfaceAlias Ethernet -DefaultGateway 10.10.10.100 -AddressFamily IPv4 -PrefixLength 22
Set-DnsClientServerAddress -InterfaceIndex Ethernet -ServerAddresses 10.10.10.101

#Usando tudo via DHCP
Set-NetIPInterface -InterfaceAlias Ethernet -Dhcp Enabled
Set-DnsClientServerAddress -InterfaceIndex Ethernet -ResetServerAddresses

# Adicionando maquina ao dominio
$credencial_dominio = Get-Credential
Add-Computer -ComputerName nome_do_pc -DomainName 'nome_do_dominio' -Credential $credencial_dominio
