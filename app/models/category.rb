class Category < ApplicationRecord
  validates :name, presence: true
  validates :url, presence: true
  has_many :genres
  has_many :genres, through: :genres_categories
end
