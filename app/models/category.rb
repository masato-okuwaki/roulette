class Category < ApplicationRecord
  has_many :genres
  has_many :genres, through: :genres_categories
end
