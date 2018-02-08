# == Schema Information
#
# Table name: games
#
#  id              :integer          not null, primary key
#  title           :string
#  platform        :string
#  ign_score       :float
#  review_link     :string
#  genre           :string
#  ign_review_date :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Game < ApplicationRecord
end
