# language: pt
# encode: UTF-8

Funcionalidade: Criar nova Pipe
  Eu como vendedor da CargoX
  Quero cadastrar meus clientes
  Para tê-los salvos

@create_card
Esquema do Cenario: Criar novo card
  Dado que tenho uma nova pipe criada com as etapas padrao
  Quando realizo a criacao de um novo card
  Então visualizo os dados card de acordo com as especificacoes
