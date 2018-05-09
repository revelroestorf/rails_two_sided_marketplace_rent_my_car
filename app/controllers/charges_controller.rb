class ChargesController < ApplicationController
  before_action :authenticate_user!

  after_action :send_guest_mail, only: [:create]
  after_action :send_owner_mail, only: [:create]

  # before_action :set_variables

  def new
    @booking = Booking.find(params[:booking])
    @amount = @booking.price_per_day
    @car = Car.find(@booking.car_id)

    @days = (@booking.date_to - @booking.date_from).to_i


  end

  def create

    @car = Car.find(params[:car_id])
    @booking = Booking.find(params[:booking])
    @booking.update(paid: true)
    @days = (@booking.date_to - @booking.date_from).to_i
    @amount = @booking.price_per_day

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => (@amount*100).to_i,
      :description => 'Rails Stripe customer',
      :currency    => 'aud' #or whatever currency you like
    )

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to root_path

  end

  private

  def send_guest_mail
    BookingConfirmationMailer.booking_confirmation_email(@booking).deliver
  end

  def send_owner_mail
    OwnerBookingNotifierMailer.owner_booking_email(@booking).deliver
  end

end
