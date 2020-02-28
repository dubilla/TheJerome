class Tournament < ApplicationRecord
  has_many :teams, inverse_of: :tournament
  has_many :picks
  belongs_to :year

  def locked?
    starts_at < DateTime.current
  end

  def starts_at_est
    zone = ActiveSupport::TimeZone.new("Eastern Time (US & Canada)")
    starts_at.in_time_zone(zone)
  end
end
