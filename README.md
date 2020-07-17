# Desafio de programação - _BYCODERS

# Descrição do projeto
Ler os dados de um [arquivo CNAB](https://github.com/ByCodersTec/desafio-ruby-on-rails/blob/master/CNAB.txt), normalizar os dados e armazenar em um banco de dados

# Funcionalidades
* Entrar com um login e senha

* Tela para upload do arquivo

* Listagem dos dados do arquivo, armazenado no banco de dados

# Versões utilizadas
* Ruby: 2.5.3
* Postgres: 9.6
* Docker: 19.03.12
* Docker Compose: 1.16.1

# Gems utilizadas
* ransack
* devise
* pg
* rspec-rails
* database_cleaner-active_record
* rails-controller-testing
* factory_bot_rails

# Para rodar o app em localhost
* Deve ter o docker e docker-compose instalado
* No terminal digite
> git clone git@github.com:igorcb/desafio-ruby-on-rails.git

* Fazer o build do projeto
> docker-compose up --build

* Criar Banco de Dados
> docker-compose run --rm web rails db:create

* Executar as migrations
> docker-compose run --rm web rails db:migration

* Rodar o arquivos seed para popular algumas tabelas.
> docker-compose run --rm web rails db:seed

* Abrir o browser (navegador)
> localhost:3000

