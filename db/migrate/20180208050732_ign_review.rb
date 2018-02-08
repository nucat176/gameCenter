class IgnReview < ActiveRecord::Migration[5.1]
  def change
      add_column :games, :ign_review_id, :integer
      add_index :reviews, :link, unique: true
  end
end
