# Você precisa baixar o webdriver do navegador que vc vai usar.
# Chrome - https://chromedriver.chromium.org/getting-started

# Função - Abrir o SEI e inserir os dados para realizar login.

# Importando o Selenium webdriver
from selenium import webdriver
from time import sleep

# Criando o Objeto Navegador usando o Chrome e o chromedriver
browser = webdriver.Chrome(
    'C:\\Program Files (x86)\\Google\\Chrome\\Application\\chromedriver.exe')

# Abrindo a pagina web
browser.get(
    'https://sip.ifro.edu.br/sip/login.php?sigla_orgao_sistema=IFRO&sigla_sistema=SEI')

# Envia o login para a pagina
login = browser.find_element_by_id('txtUsuario')
login.send_keys('usuario_aqui')

# Envia a senha para a pagina e da submit
senha = browser.find_element_by_id('pwdSenha')
senha.send_keys('senha_aqui')
sleep(2)

# Clica no botao acessar
submit = browser.find_element_by_id('sbmLogin')
submit.click()
