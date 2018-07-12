# == Schema Information
#
# Table name: questionnaires
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  role       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Questionnaire < ApplicationRecord
    belongs_to :user
    has_many :questions
    has_and_belongs_to_many :interests
    has_and_belongs_to_many :roles

    validates :user_id, presence: true
    validates :role, presence: true
end
