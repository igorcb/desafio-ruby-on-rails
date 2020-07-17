FactoryBot.define do 
  factory :negotiation do
    payment { association :payment }
    store { association :store }
    cpf { '000.000.000-00' }
    card { '1234****6678' }
    date { Date.today}
    time { Time.now}
    price { 9.99 }
  end
end

