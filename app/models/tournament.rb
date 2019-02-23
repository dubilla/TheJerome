class Tournament < ApplicationRecord
  has_many :picks
  has_many :teams, inverse_of: :tournament
end
