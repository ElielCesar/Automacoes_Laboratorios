# Coloque o ip e porta do proxy que vc deseja que seja setado.
$proxy = "10.10.10.10:8080"

#pega o caminho de Internet Settings e permite alterar valores
$chave="HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"

# faz o processo de alteração do proxy
Set-ItemProperty -path $chave ProxyEnable -value 1
Set-ItemProperty -path $chave ProxyServer -value $proxy
