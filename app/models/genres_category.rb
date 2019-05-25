class GenresCategory < ApplicationRecord
  belongs_to :genre
  belongs_to :category
end
