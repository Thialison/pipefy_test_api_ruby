# pipefy_test_api_ruby

<p id="sobre" align="center">

  ![](https://img.shields.io/badge/license-MIT-green)
  ![](https://img.shields.io/badge/language-Portuguese-yellow)
  ![](https://img.shields.io/badge/language-Ruby-red)

Automação end-to-end do processo de criação de uma pipe e criação de cards para o board da Pipefy

Tabela de conteúdos
=================
<!--ts-->
 * [Sobre](#sobre)
 * [Pre Requisitos](#pre-requisitos)
 * [Executando a aplicação](#rodando)
 <!--te-->

 <!-- Altere os Pré-requisitos -->

###  Pré-requisitos<a id="pre-requisitos"></a>

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:
 [Git](https://git-scm.com/),
 [Rbenv](github.com/rbenv/rbenv/),
 [Ruby](https://github.com/rbenv/rbenv#installing-ruby-versions) (Recomenda-se a versão 2.6),

 Além disto é bom ter um editor para trabalhar com o código como [VSCode](https://code.visualstudio.com/)
  
  ### 🎲Rodando a Aplicação<a id="rodando"></a>

````bash
 # Clone este repositório
 git clone git@github.com:cargox/cargox_test_bidride_api.git

 # Acesse a pasta do projeto no terminal
 cd <pasta_desejada>

 # Instale o bundler
 $ gem install bundler

  # Instale as dependências do projeto
 $ bundle install

 # Execute a aplicação
 $ bundle exec cucumber -t @<tag_desejada>

 ````
  
**Observações:**
  * Após realizar um depois o projeto é executado no CircleCI através de um container do docker e é realizado a análise estática do mesmo, afim de verificar a integridade do projeto
  

