class BookingConfirmationMailer < ApplicationMailer

  default default: 'noreply@rentmycar.com'

  def booking_confirmation_email(user)
    @user = user
    mail(to: @user.email, subject: 'Rent my car - Booking confirmation')
  end

end
