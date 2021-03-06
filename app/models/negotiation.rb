class Negotiation < ApplicationRecord
  belongs_to :payment
  belongs_to :store
  validates :cpf, :card, :date, :time, :price, presence: true

  def self.ransackable_attributes(_auth_object = nil)
    %w[id cpf store_iq]
  end

  def self.calculate_balance(negotiations)
    negotiations.where(payments: { signal: '+' }).sum(:price) - negotiations.where(payments: { signal: '-' }).sum(:price)
  end
end
