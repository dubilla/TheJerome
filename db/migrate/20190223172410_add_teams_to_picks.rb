class AddTeamsToPicks < ActiveRecord::Migration[5.2]
  def change
    add_reference :picks, :team, foreign_key: true
  end
end
