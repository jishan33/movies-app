class Country < ApplicationRecord
  has_many :movies, dependent: :destroy
end
