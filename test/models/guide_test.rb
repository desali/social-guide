# == Schema Information
#
# Table name: guides
#
#  id           :integer          not null, primary key
#  categorie_id :integer
#  name         :string
#  description  :text
#  status       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class GuideTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
