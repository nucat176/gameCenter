# == Schema Information
#
# Table name: games
#
#  id            :integer          not null, primary key
#  title         :string
#  platform      :string
#  genre         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  ign_review_id :integer
#

class Game < ApplicationRecord
    belongs_to :ign_review,
    class_name: :Review,
    primary_key: :id,
    foreign_key: :ign_review_id
end
