class OwnerBookingNotifierMailer < ApplicationMailer

  default :from => 'noreply@rentmycar.com'

def owner_booking_email(booking)
    @booking = booking
    mail(:to => @booking.car.user.email, :subject => 'Rent my car - New booking')
  end

end
