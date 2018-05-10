class BookingConfirmationMailer < ApplicationMailer

  default :from => 'noreply@rentmycar.com'

  def booking_confirmation_email(booking)
    @booking = booking
    mail(to: @booking.user.email, subject: 'Rent my car - Booking confirmation')
  end

end
