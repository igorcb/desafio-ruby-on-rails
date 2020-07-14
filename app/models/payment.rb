class Payment < ApplicationRecord
  validates :description, presence: true, uniqueness: true
  validates :nature, presence: true
  validates :signal, presence: true

  has_many :negotiations
end
