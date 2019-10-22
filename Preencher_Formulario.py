# Funcao - Preencher um formulario simples com nome e email.

# Baixe o chromedriver para o seu computador, ele que vai manipular os dados:
# Chrome - https://chromedriver.chromium.org/getting-started

# Instalar o pacote Selenium - pip install selenium
# Use o inspecionar elementos do chrome para encontrar os valores dos campos.

# Importando o Selenium webdriver
from selenium import webdriver
from time import sleep

# Criando o Objeto Navegador usando o Chrome e o chromedriver
browser = webdriver.Chrome(
    'C:\\Program Files (x86)\\Google\\Chrome\\Application\\chromedriver.exe')

# Abrindo a pagina web
browser.get(
    'https://docs.google.com/forms/d/e/1FAIpQLSdmeNpOfT8_-o8-S721DipQ9lk5az9qzb4U7rlc9EkVyKf3ZA/viewform')

for line_number in range(1, 13):
    linhas = [linha for linha in open('listacandidatos.csv')]
    dados = linhas[line_number].strip().split(';')
    nome = dados[0]
    email = dados[1]

    # Envia o Nome para a pagina
    sleep(2)
    login = browser.find_element_by_name('entry.1246577254')
    login.send_keys(nome)

    # Envia a E-mail para a pagina
    sleep(2)
    senha = browser.find_element_by_name('entry.2041624029')
    senha.send_keys(email)

    # Clica no botao enviar
    sleep(2)
    submit = browser.find_element_by_class_name(
        'quantumWizButtonPaperbuttonContent')
    submit.click()

    # Clica em enviar outra resposta
    sleep(2)
    nova_resp = browser.find_element_by_link_text('Enviar outra resposta')
    nova_resp.click()
    sleep(2)
