# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Role < ApplicationRecord
    has_and_belongs_to_many :questionnaires

    validates :title, presence: true, length: { minimum: 2, maximum: 20 }
end
