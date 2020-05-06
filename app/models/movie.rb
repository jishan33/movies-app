class Movie < ApplicationRecord
  validates :name, presence: true
  validates :release_year, presence: true, numericality: { greater_than: 1888 }
end
