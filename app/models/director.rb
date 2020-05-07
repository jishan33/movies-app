class Director < ApplicationRecord
  validates :name, presence: true
  has_many :movies, dependent: :destroy
end
