class Round < ApplicationRecord
  has_many :teams
  validates :order, presence: true, numericality: { only_integer: true }
end
