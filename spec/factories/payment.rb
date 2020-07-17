FactoryBot.define do 
  factory :payment do
    description { 'Anything' }
    nature { 'Entrada' }
    signal { '+' }
  end
end