# Preencher_Formulario.py
# Usa dados de um arquivo csv para preencher um formulario

import pyperclip
import PyWinMouse
from time import sleep
from pynput.keyboard import Key, Controller

# cria o objeto teclado e mouse
teclado = Controller()
ponteiro = PyWinMouse.Mouse()

# ler o arquivo csv com nome e email

for line_number in range(1, 10):
    linhas = [linha for linha in open('listacandidatos.csv')]
    dados = linhas[line_number].strip().split(';')
    nome = dados[0]
    email = dados[1]

    # Cria o objeto ponteiro e vai para o form usuario.
    ponteiro.move_mouse(35, 370)
    ponteiro.left_click()
    ponteiro.right_click()
    ponteiro.left_click()
    sleep(3)
    ponteiro.move_mouse(134, 345)
    ponteiro.left_click()

    # insere dados no form usuario
    pyperclip.copy(nome)
    with teclado.pressed(Key.ctrl):
        teclado.press('v')
    sleep(6)

    # fora do form
    ponteiro.move_mouse(35, 370)
    ponteiro.left_click()
    sleep(6)

    # move e insere no form email
    ponteiro.move_mouse(134, 426)
    ponteiro.left_click()
    pyperclip.copy(email)
    with teclado.pressed(Key.ctrl):
        teclado.press('v')
    sleep(6)

    # clica em enviar
    ponteiro.move_mouse(128, 490)
    sleep(6)
    ponteiro.left_click()
    sleep(6)

    # voltar para outra resposta
    ponteiro.move_mouse(138, 296)
    sleep(6)
    ponteiro.left_click()

    nome = None
    email = None
