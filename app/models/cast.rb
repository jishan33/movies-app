class Cast < ApplicationRecord
  has_many :cast_movies
  has_many :movies, through: :cast_movies
  enum gender: {female: 0, male: 1}
end
