class AddEliminatedToTeam < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :eliminated, :boolean
  end
end
