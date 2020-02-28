class AddYear < ActiveRecord::Migration[5.2]
  def change
    create_table :years do |t|
      t.string :name
      t.timestamps
    end
  end
end
