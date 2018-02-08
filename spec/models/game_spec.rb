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

require 'rails_helper'

RSpec.describe Game, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
