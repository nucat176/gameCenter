# == Schema Information
#
# Table name: game_review_joins
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  review_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe GameReviewJoin, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
