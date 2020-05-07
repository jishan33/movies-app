class Movie < ApplicationRecord
  validates :name, presence: true
  validates :release_year, numericality: { greater_than: 1888 }
  has_many :genre_movies
  has_many :genres, through: :genre_movies
  belongs_to :director, dependent: :destroy
  has_many :cast_movies
  has_many :casts, through: :cast_movies
  belongs_to :user
  belongs_to :country

end

