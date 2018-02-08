class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
        t.string :source
        t.string :date
        t.float :score
        t.string :author
        t.string :link

        t.timestamps
    end
  end

  remove_column :games, :ign_review_date
  remove_column :games, :ign_score
  remove_column :games, :review_link
end
