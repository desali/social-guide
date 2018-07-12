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

class Review < ApplicationRecord
    belongs_to :guide
    belongs_to :user

    validates :guide_id, presence: true
    validates :user_id, presence: true
    validates :score, presence: true, length: { minimum: 1, maximum: 2 }
    validates :description, presence: true, length: { minimum: 2, maximum: 100 }
end
