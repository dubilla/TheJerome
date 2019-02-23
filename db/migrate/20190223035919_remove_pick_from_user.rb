class RemovePickFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_reference :picks, :user
  end
end
