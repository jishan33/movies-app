class Movie < ApplicationRecord
  validates :name, presence: true
  validates :release_year, presence: true, numericality: { greater_than: 1888 }
  has_many :genre_movies
  has_many :genres, through: :genre_movies
  belongs_to :director, dependent: :destroy
end
