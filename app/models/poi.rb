class Poi < ApplicationRecord
  belongs_to :city
  has_many :reviews
  has_many_attached :photos
end
