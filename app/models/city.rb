class City < ApplicationRecord
  has_many :pois
  has_many_attached :photos
end
