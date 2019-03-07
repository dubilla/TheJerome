class AddTeamsToRounds < ActiveRecord::Migration[5.2]
  def change
    add_reference :teams, :round, foreign_key: true
  end
end
