class AddTournamentToYear < ActiveRecord::Migration[5.2]
  def change
    add_reference :tournaments, :year, foreign_key: true
  end
end
