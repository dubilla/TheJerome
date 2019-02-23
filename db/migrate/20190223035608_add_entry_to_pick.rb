class AddEntryToPick < ActiveRecord::Migration[5.2]
  def change
    add_reference :picks, :entry, foreign_key: true
  end
end
