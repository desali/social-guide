class User < ApplicationRecord
    has_and_belongs_to_many :guides
    has_many :questionnaires
    has_many :notifications
    has_many :posts
    has_many :likes, through: :posts
    has_many :reviews
    has_one_attached :avatar
end
