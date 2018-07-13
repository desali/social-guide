# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  guide_id   :integer
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
    belongs_to :user
    has_many :likes

    validates :user_id, presence: true
    validates :guide_id, presence: true
    validates :status, presence: true
end
