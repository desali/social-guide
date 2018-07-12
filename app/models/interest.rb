# == Schema Information
#
# Table name: interests
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Interest < ApplicationRecord
    has_and_belongs_to_many :questionnaires
    validates :title, presence: true, length: { minimum: 2, maximum: 20 }, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
end
