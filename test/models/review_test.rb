# == Schema Information
#
# Table name: reviews
#
#  id          :integer          not null, primary key
#  guide_id    :integer
#  user_id     :integer
#  score       :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
