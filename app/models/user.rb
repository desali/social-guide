class User < ApplicationRecord
    has_and_belongs_to_many :guides
    has_many :questionnaires
    has_many :notifications
    has_many :posts
    has_many :likes, through: :posts
    has_many :reviews
    has_one_attached :avatar
    
  has_many :active_relationships,  class_name:  "Relationship",
                                   foreign_key: "follower_id",
                                   dependent:   :destroy
  has_many :passive_relationships, class_name:  "Relationship",
                                   foreign_key: "followed_id",
                                   dependent:   :destroy
  has_many :following, through: :active_relationships,  source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
end
