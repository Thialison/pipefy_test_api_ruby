# language: pt
# encode: UTF-8

@regression
Funcionalidade: Criar nova Pipe
  Eu como Quality Assurance
  Quero efetuar a criacao de um card a partir de um nova pipe
  Para assegurar que eles estão sendo criados conforme a especificação

@create_card
Cenario: Criar novo card
  Dado que tenho uma nova pipe criada com as etapas padrao
  Quando realizo a criacao de um novo card
  Então visualizo os dados card de acordo com as especificacoes
