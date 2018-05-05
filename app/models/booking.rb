class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  # after_create :send_mail

  def send_mail
    BookingConfirmationMailer.booking_confirmation_email(self).deliver
  end

end
