class User < ApplicationRecord

  has_many :cars
  has_many :bookings

  after_create :send_mail

  rolify

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def send_mail
    UserNotifierMailer.signup_email(self).deliver
  end

end
