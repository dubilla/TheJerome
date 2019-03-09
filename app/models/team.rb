class Team < ApplicationRecord
  belongs_to :tournament
  belongs_to :round
  has_many :picks
end
