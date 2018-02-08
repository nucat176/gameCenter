# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  source     :string
#  date       :string
#  score      :float
#  author     :string
#  link       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ApplicationRecord
    has_one :game,
    class_name: :Game,
    primary_key: :id,
    foreign_key: :ign_review_id
end
