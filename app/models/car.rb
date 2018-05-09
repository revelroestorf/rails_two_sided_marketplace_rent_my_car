class Car < ApplicationRecord

  belongs_to :user
  has_many :bookings

  resourcify

  geocoded_by :full_address

  # after_validation :geocode

  # rake geocode:all CLASS=YourModel

  mount_uploader :image, CarImageUploader


end
