# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  post_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Like < ApplicationRecord
    belongs_to :post
    belongs_to :user
    
    validates :post_id, presence: true
    validates :user_id, presence: true
end
