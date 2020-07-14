class Negotiation < ApplicationRecord
  belongs_to :payment
  belongs_to :store
  validate :cpf, :card, :date, :time, :price
end
