class AddStartTimeToTournaments < ActiveRecord::Migration[5.2]
  def change
    add_column :tournaments, :starts_at, :datetime
    add_index :tournaments, :starts_at
  end
end
