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

class Step < ApplicationRecord
    belongs_to :guide

    validates :guide_id, presence: true
    validates :name, presence: true, length: { minimum: 2, maximum: 20 }
    validates :description, presence: true, length: { minimum: 8, maximum: 100 }
    validates :status, presence: true
end
