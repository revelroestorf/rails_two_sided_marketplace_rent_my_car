class User < ApplicationRecord

  has_many :cars
  has_many :bookings
  

  rolify

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
