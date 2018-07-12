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
    has_one_attached :image
    belongs_to :categorie
    has_many :steps
    has_many :reviews
    has_and_belongs_to_many :users

    validates :categorie_id, presence: true
    validates :name, presence: true, length: { minimum: 2, maximum: 50 }
    validates :description, presence: true, length: { minimum: 4, maximum: 200 }
    validates :status, presence: true
end
