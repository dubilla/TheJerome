class AddNameToEntry < ActiveRecord::Migration[5.2]
  def change
    add_column :entries, :name, :string
  end
end
