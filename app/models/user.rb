class User < ApplicationRecord

  has_many :cars
  has_many :bookings
  has_many :converations
  has_many :messages, through: :conversations

  after_create :send_mail

  rolify

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

  validates :firstname, :presence => true,
												 :length => { :maximum => 25 }
  validates :lastname, :presence => true,
                        :length => { :maximum => 50 }
  validates :email, :format => EMAIL_REGEX



  def send_mail
    UserNotifierMailer.signup_email(self).deliver
  end

end
