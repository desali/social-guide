class Questionnaire < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :interests
    has_and_belongs_to_many :roles
    has_many :questions
end
