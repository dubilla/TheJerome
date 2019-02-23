class AddTournamentToPicks < ActiveRecord::Migration[5.2]
  def change
    add_reference :picks, :tournament, foreign_key: true
  end
end
