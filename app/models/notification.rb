# == Schema Information
#
# Table name: notifications
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  guide_id   :integer
#  date       :date
#  state      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Notification < ApplicationRecord
    belongs_to :user
    validates :user_id, presence: true
    validates :guide_id, presence: true
    validates :date, presence: true, length: { minimum: 4, maximum: 20 }, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
    validates :state, presence: true
end
