# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  guide_id   :integer
#  date       :date
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
    belongs_to :user
    has_many :likes
    validates :user_id
    validates :guide_id
    validates :date, presence: true, length: { minimum: 4, maximum: 20 }, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
    validates :status, presence: true
end
