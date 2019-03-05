class Tournament < ApplicationRecord
  has_many :teams, inverse_of: :tournament
  has_many :picks

  def locked?
    starts_at <= Date.current
  end
end
