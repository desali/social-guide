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
    has_one_attached :avatar

    has_secure_password

    has_many :questionnaires
    has_many :notifications
    has_many :posts
    has_many :reviews
    has_many :likes, through: :posts
    has_and_belongs_to_many :guides

    has_many :active_relationships,  class_name:  "Relationship",
                                     foreign_key: "follower_id",
                                     dependent:   :destroy
    has_many :passive_relationships, class_name:  "Relationship",
                                     foreign_key: "followed_id",
                                     dependent:   :destroy
    has_many :following, through: :active_relationships,  source: :followed
    has_many :followers, through: :passive_relationships, source: :follower

    validates :username, presence: true, length: { minimum: 3, maximum: 20 }, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
    validates :surname, presence: true, length: { minimum: 2, maximum: 20 }, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
    validates :name, presence: true, length: { minimum: 2, maximum: 20 }, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
    validates :email, presence: true, uniqueness: true, length: { minimum: 6, maximum: 50}, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "Invalid email!"}
    validates :birthdate, presence: true
    validates :phone, presence: true, length: { minimum: 8, maximum: 11 }, format: { with: /\A[0-9+]+\Z/, message: "Invalid phone number!"}
    validates :password, presence: true, confirmation: true, length: { minimum: 8, maximum: 50 }, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
    validates :password_confirmation, presence: true, length: { minimum: 8, maximum: 50 }, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
end
