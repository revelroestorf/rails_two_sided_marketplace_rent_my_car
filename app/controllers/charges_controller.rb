class ChargesController < ApplicationController
  before_action :set_car_and_amount
  before_action :set_booking


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

  def set_car_and_amount
    @car = Car.find(params[:car_id])
    @amount = @car.price_per_day
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

end
