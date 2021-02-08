class AddActiveToYear < ActiveRecord::Migration[5.2]
  def change
    add_column :years, :active, :boolean, index: true, default: false
  end
end
