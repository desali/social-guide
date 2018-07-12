# == Schema Information
#
# Table name: steps
#
#  id          :integer          not null, primary key
#  guide_id    :integer
#  name        :string
#  description :text
#  status      :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class StepTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
