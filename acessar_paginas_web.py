# Acessar o Sistemas automaticamente usando coordenadas do mouse.
# as coordenadas de cada local podem ser obtidas atraves do trecho de codigo
# comentado abaixo:
'''
import PyWinMouse

ponteiro = PyWinMouse.Mouse()

while True:
    print(ponteiro.get_mouse_pos())

'''

import PyWinMouse
import pyperclip

# Cria o objeto ponteiro e vai para o form usuario.
ponteiro = PyWinMouse.Mouse()
ponteiro.move_mouse(217, 490)
ponteiro.left_click()

# insere dados no form usuario
pyperclip.copy('USUARIO AQUI')
pyperclip.paste()

# clica em outro local para nao pegar dados salvos
# no gerenciador de senhas do navegador.
ponteiro.move_mouse(228, 210)
ponteiro.left_click()

# move e insere no form senha
ponteiro.move_mouse(244, 543)
ponteiro.left_click()
pyperclip.copy('SENHA AQUI')
pyperclip.paste()

# clica em acessar
ponteiro.move_mouse(372, 666)
ponteiro.left_click()
ponteiro.left_click()
