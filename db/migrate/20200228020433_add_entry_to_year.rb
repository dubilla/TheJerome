class AddEntryToYear < ActiveRecord::Migration[5.2]
  def change
    add_reference :entries, :year, foreign_key: true
  end
end
