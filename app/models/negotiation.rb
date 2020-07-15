class Negotiation < ApplicationRecord
  belongs_to :payment
  belongs_to :store
  validate :cpf, :card, :date, :time, :price

  def self.ransackable_attributes(auth_object = nil)
    ['id', 'cpf', 'store_iq']
  end

end
