# Funcao - Realizar um crawler no site do ifro onde as nomeacoes sao feitas
# e trazer o nome dos candidatos convocados.

from bs4 import BeautifulSoup as bs
from urllib.request import urlopen

# requisitando a pagina
html = urlopen(
    'https://selecao.ifro.edu.br/tecnico-administrativo/537-concurso-2018-servidores-tecnico-administrativos-em-educacao')


# usando o bs4
concurso_page = bs(html, 'html.parser')
div_convocacoes = concurso_page.find_all('div', {'class': 'phocadownloadfilelist'})
nomeacoes = div_convocacoes[1].find_all('div', {'class': 'phocadownloadfilelist32'})

# iterando sobre os resultados
i = 0
while i < len(nomeacoes):
    print(nomeacoes[i].text)
    i = i + 1
