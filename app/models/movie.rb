class Movie < ApplicationRecord
  validates :name, presence: true
  validates :release_year, numericality: { greater_than: 1888 }

  has_many :genre_movies, dependent: :delete_all
  has_many :genres, through: :genre_movies

  belongs_to :director

  has_many :cast_movies, dependent: :delete_all
  has_many :casts, through: :cast_movies

  belongs_to :user
  belongs_to :country
  has_one_attached :picture

end

