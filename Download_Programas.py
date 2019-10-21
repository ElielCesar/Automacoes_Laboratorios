# Função - Servir de Modelo para download automatico de software.

import requests

# Tamanho do arquivo em Bytes
Len = 2000000

# Pagina de download.
res = requests.get(
    'https://the.earth.li/~sgtatham/putty/0.73/w64/putty.exe')

# começa a criar um arquivo com o nome PUTTY e modo de escrita binario.
playfile = open('PUTTY.exe', 'wb')

# pega o conteudo do arquivo em partes e vai criando o arquivo.
for dado in res.iter_content(Len):
    playfile.write(dado)
playfile.close()
