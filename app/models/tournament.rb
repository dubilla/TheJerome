class Tournament < ApplicationRecord
  has_many :teams, inverse_of: :tournament
  has_many :picks
end
