class Cast < ApplicationRecord
  has_many :cast_movies
  has_many :movies, through: :cast_movies
end
