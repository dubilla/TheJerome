class AddRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |r|
      r.string :name, null: false
      r.timestamps
    end
  end
end
