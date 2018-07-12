class Guide < ApplicationRecord
    belongs_to :categorie
    has_and_belongs_to_many :users
    has_many :steps
    has_many :reviews
end
