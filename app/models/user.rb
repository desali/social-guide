# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string
#  email      :string
#  name       :string
#  surname    :string
#  birthdate  :date
#  phone      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
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
  
  validates :username, presence: true, length: { minimum: 3, maximum: 20 }, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
  validates :password_confirmation, presence: true, length: { minimum: 8, maximum: 50 }, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
  validates :password, presence: true, length: { minimum: 8, maximum: 20 }, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
  validates :email, presence: true, uniqueness: true, length: { minimum: 8, maximum: 50}, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
  validates :surname, presence: true, length: { minimum: 1, maximum: 20 }, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
  validates :birthdate, presence: true, length: { minimum: 8, maximum: 20 }, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
  validates :phone, presence: true, length: { minimum: 8, maximum: 11 }, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
  end