class Entry < ApplicationRecord
  belongs_to :user
  has_many :picks, inverse_of: :entry
  accepts_nested_attributes_for :picks

  def score
    ScoreCalculator.new(self).calculate
  end

  def points_possible_remaining
    PointsPossibleRemainingCalculator.new(self).calculate
  end
end
