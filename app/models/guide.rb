# == Schema Information
#
# Table name: guides
#
#  id           :integer          not null, primary key
#  categorie_id :integer
#  name         :string
#  description  :text
#  status       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Guide < ApplicationRecord
    belongs_to :categorie
    has_and_belongs_to_many :users
    has_many :steps
    has_many :reviews
    has_one_attached :image
    validates :categorie_id, presence: true
    validates :name, presence: true, length: { minimum: 2, maximum: 20 }, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
    validates :description, presence: true, length: { minimum: 4, maximum: 100 }, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
    validates :status, presence: true 
end
