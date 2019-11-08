# importando o conector do mysql
import mysql.connector

# abrindo a conexao com o banco
conexao = mysql.connector.connect(
    user="aplicacao", password="senha_aqui",
    host="127.0.0.1", database="db_escola_curso")

# executor da consulta
executor = conexao.cursor()


# funcao que realiza o insert
def insert(values, table, fields=None):

    global executor

    insercao = "insert into " + table

    if (fields):
        insercao = insercao + " (" + fields + ") "

    insercao = insercao + " values " + ",".join(["(" + v + ")" for v in values])

    print(insercao)

    # efetiva a conexao no banco
    executor.execute(insercao)
    conexao.commit()
    
# variavel que recebe os valores para insercao
values = [
    "9, 'Charles Cavalcante', '1995-05-10', 'Setor 9', 'Ariquemes', 'RO', '1212.1212'"]

# funcao insert que recebe valores + a tabela
insert(values, "alunos")

# fechando a conexao com o banco
conexao.close()
