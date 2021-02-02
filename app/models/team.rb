class Team < ApplicationRecord
  belongs_to :tournament
  belongs_to :round
  has_many :picks

  validates :name, presence: true
end
