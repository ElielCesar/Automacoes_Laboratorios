# importando o conector do mysql
import mysql.connector

# abrindo a conexao com o banco
conexao = mysql.connector.connect(
    user="usuario_aqui", password="senha_aqui",
    host="127.0.0.1", database="banco_acessivel_aqui")

# executor da consulta
executor = conexao.cursor()


# criar uma funcao select - tente ser similar ao SQL
def select(fields, tables, where=None):

    global executor

    consulta = "select " + fields + " from " + tables

    # se o where estiver preenchido
    if (where):
        consulta = consulta + " where " + where

    # executa o SELECT sql com a var consulta.
    executor.execute(consulta)

    # retorna todos os resultados encontrados pelo SELECT
    return executor.fetchall()

# recebe o resultado da funcao select definida acima.
result = select("nome_aluno, cpf_aluno", "alunos")

for r in result:
    print(r)

# fechando a conexao com o banco
conexao.close()
