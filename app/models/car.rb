class Car < ApplicationRecord

  belongs_to :user
  has_many :bookings

  resourcify

  geocoded_by :full_address

  # Before seed, comment out:
  after_validation :geocode
  # then uncomment and run: $ rake geocode:all CLASS=Car in the terminal

  # Before seed, comment out:
  mount_uploader :image, CarImageUploader
  # then uncomment

  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :price_per_day, presence: true,
                            numericality: true
  validates :price_per_km, presence: true,
                            numericality: true
  validates :full_address, presence: true




end
