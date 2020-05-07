class Cast < ApplicationRecord
  validates :name, presence: true
  validates :gender, presence: true
  has_many :cast_movies, dependent: :delete_all
  has_many :movies, through: :cast_movies
  enum gender: {female: 0, male: 1}
end


