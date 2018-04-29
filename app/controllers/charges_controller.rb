class ChargesController < ApplicationController
  before_action :create_booking
  before_action :set_amount

  def create

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
    redirect_to new_charge_path


  end

  private

  def create_booking
    @car = Car.find(params[:car_id])

    @booking = Booking.new
    @booking.user_id = current_user.id
    @booking.price_per_day = @car.price_per_day
    @booking.price_per_km = @car.price_per_km
    @booking.save
  end

  def set_amount
    @amount = @booking.price_per_day
  end

end
