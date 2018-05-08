class User < ApplicationRecord

  has_many :cars
  has_many :bookings
  has_many :converations
  has_many :messages, through: :conversations

  after_create :send_mail

  rolify

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def send_mail
    UserNotifierMailer.signup_email(self).deliver
  end

end
