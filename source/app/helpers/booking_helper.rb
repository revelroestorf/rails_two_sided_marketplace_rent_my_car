module BookingHelper

  def calendar_date_block(car_id)
    bookings = Car.find(car_id).bookings.where(paid: true).all
    block_dates = []

    bookings.each do |booking|
      (booking.date_from..booking.date_to).each do |date|
        block_dates.push(date)
      end
    end

    return block_dates

  end

end
