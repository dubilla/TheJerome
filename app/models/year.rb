class Year < ApplicationRecord
  has_many :tournaments
  has_many :entries
  scope :active, -> { where(active: true).first }
end
