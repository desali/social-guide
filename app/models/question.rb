# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  title      :string
#  answer     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ApplicationRecord
    belongs_to  :questionnaire

    validates :title, presence: true, length: { minimum: 8, maximum: 50 }
    validates :answer, presence: true, length: { minimum: 2, maximum: 50 }
end
