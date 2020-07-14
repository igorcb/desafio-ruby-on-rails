class Store < ApplicationRecord
  validates :owner, :name, presence: true

  has_many :negotiations
end
