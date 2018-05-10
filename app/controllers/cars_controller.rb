class CarsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  # GET /cars
  # GET /cars.json
  def index

    if params[:user_location]
      if location = Geocoder.coordinates(params[:user_location])
        @latitude = location[0]
        @longitude = location[1]
      else
        @latitude = -27.4698
        @longitude = 153.0251
      end
    else
      @latitude = -27.4698
      @longitude = 153.0251
    end


    @cars = []

    Car.all.each do |car|
      if car.active
        @cars.push(car)
      end
    end


    if params[:booking]
      if params[:booking][:date_from].to_i != 0 && params[:booking][:date_to].to_i != 0

        @cars = []

        @un_available_cars = []
        search_dates = []

        (params[:booking][:date_from].to_date..params[:booking][:date_to].to_date).each do |date|
          search_dates.push(date)
        end

        Car.all.each do |car|

          if car.active == false
            @un_available_cars.push(car)
          end

          if car.bookings.first

            car.bookings.each do |booking|


              (booking.date_from..booking.date_to).each do |date|

                if search_dates.include?(date)
                  @un_available_cars.push(car)
                end
              end
            end
          end
        end

        Car.all.each do |car|
          unless @un_available_cars.include?(car)
            @cars.push(car)
          end
        end

      end
    end


  end




  def new
    @car = Car.new
  end

  def edit
    @car = Car.find(params[:id])
  end

  def create
    @car = Car.new(car_params)
    @car.user_id = current_user.id

    respond_to do |format|
      if @car.save
        format.html { redirect_to bookings_owner_cars_path, notice: 'Car was successfully created.' }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    #UPDATE WORKS IF 'REQUIRE(:CAR)' REMOVED...
    # params.require(:car)permit(:make, :model, :year, :full_address, :price_per_day, :price_per_km, :image)

    # @car.update(image: params[:image])
    #
    # render plain: params.inspect
    # return

    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to bookings_owner_cars_path, notice: 'Car was successfully updated.' }
        format.json { render :show, status: :ok, location: @car }
      else
      format.html { render :edit }
      format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end




  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: 'Car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private

    def set_car
      @car = Car.find(params[:id])
    end

    def car_params
      params.require(:car).permit(:make, :model, :year, :full_address, :price_per_day, :price_per_km, :image)
    end

end
