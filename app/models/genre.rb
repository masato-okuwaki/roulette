class Genre < ApplicationRecord
  has_many :categories
  has_many :categories, through: :genres_categories
end
