class Car < ApplicationRecord
  belongs_to :user

  resourcify

  geocoded_by :full_address
  after_validation :geocode


end
