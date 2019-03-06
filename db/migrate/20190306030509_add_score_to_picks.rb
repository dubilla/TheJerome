class AddScoreToPicks < ActiveRecord::Migration[5.2]
  def change
    add_column :picks, :score, :integer, default: 0
  end
end
