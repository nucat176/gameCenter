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

require 'rails_helper'

RSpec.describe Review, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
