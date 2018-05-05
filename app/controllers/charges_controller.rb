class ChargesController < ApplicationController

  # before_action :set_variables

  def new
    @booking = Booking.find(params[:booking])
    @amount = @booking.price_per_day
    @car = Car.find(@booking.car_id)

  end

  def create

    @booking = Booking.find(params[:booking])
    @booking.update(paid: true)
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

end
