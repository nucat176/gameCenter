class RemoveUniques < ActiveRecord::Migration[5.1]
  def change
      remove_index :games, :title
      add_index :games, :title
  end
end
