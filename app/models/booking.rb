class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  after_create active: true

end
