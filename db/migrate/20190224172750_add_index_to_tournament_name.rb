class AddIndexToTournamentName < ActiveRecord::Migration[5.2]
  def change
    add_index :tournaments, :name
  end
end
