class User < ApplicationRecord

  has_many :cars

  rolify
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
