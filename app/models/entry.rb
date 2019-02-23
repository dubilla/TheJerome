class Entry < ApplicationRecord
  belongs_to :user
  has_many :picks
  accepts_nested_attributes_for :picks
end
