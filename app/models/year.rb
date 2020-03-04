class Year < ApplicationRecord
  has_many :tournaments
  has_many :entries
end
