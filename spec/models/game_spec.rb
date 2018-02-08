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

require 'rails_helper'

RSpec.describe Game, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
