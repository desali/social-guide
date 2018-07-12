# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Categorie < ApplicationRecord
    has_many :guides

    validates :title, presence: true, length: { minimum: 2, maximum: 50 }
end
