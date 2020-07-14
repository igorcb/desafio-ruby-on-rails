# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Payment.create(description: 'Débito',          nature: 'Entrada', signal: '+')
Payment.create(description: 'Boleto',          nature: 'Saída', signal: '-')
Payment.create(description: 'Financiamento',   nature: 'Saída', signal: '-')
Payment.create(description: 'Crédito',         nature: 'Entrada', signal: '+')
Payment.create(description: "Recebimento Empréstimo\t", nature: 'Entrada', signal: '+')
Payment.create(description: 'Vendas',          nature: 'Entrada', signal: '+')
Payment.create(description: 'Recebimento TED', nature: 'Entrada', signal: '+')
Payment.create(description: 'Recebimento DOC', nature: 'Entrada', signal: '+')
Payment.create(description: 'Aluguel',         nature: 'Saída',   signal: '-')