class CreateGames < ActiveRecord::Migration[5.1]
    def change
        create_table :games do |t|
        t.string :title
        t.string :platform
        t.float :ign_score
        t.string :review_link
        t.string :genre
        t.string :ign_review_date

        t.timestamps
    end
    add_index :games, :title, unique: true
  end
end
