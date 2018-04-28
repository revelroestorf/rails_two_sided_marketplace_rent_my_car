class Car < ApplicationRecord
  belongs_to :user

  geocoded_by :full_address
  after_validation :geocode


end
