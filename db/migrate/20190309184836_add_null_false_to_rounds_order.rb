class AddNullFalseToRoundsOrder < ActiveRecord::Migration[5.2]
  def change
    change_column_null :rounds, :order, false
  end
end
