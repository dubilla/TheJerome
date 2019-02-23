class Pick < ApplicationRecord
  belongs_to :entry
  belongs_to :team
  belongs_to :tournament
end
