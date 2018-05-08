class CarsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_car, only: [:show, :edit, :update, :destroy]
  before_action :car_params, only: [:create, :destroy]


  # GET /cars
  # GET /cars.json
  def index

    # render plain: params.inspect
    # return

    @cars = Car.all
    if params[:user_location]
      location = Geocoder.search(params[:user_location])
      @latitude = location[0].latitude
      @longitude = location[0].longitude
    else
      @latitude = -27.4698
      @longitude = 153.0251
    end

  end

  def show
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
        format.html { redirect_to @car, notice: 'Car was successfully created.' }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @car.update(make: params[:make], model: params[:model], year: params[:year],
                full_address: params[:full_address], price_per_day: params[:price_per_day],
                price_per_km: params[:price_per_km], image: params[:image])
    redirect_to(bookings_owner_cars_path)
    flash[:notice] = 'Car was successfully updated.'

    # respond_to do |format|
    #   if @car.update(car_params)
    #     if params[:x]
    #       format.html { redirect_to @car, notice: 'Car was successfully updated.' }
    #       format.json { render :show, status: :ok, location: @car }
    #     else
    #       redirect_to(bookings_owner_cars_path)
    #       flash[:notice] = 'Car was successfully updated.'
    #     end
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @car.errors, status: :unprocessable_entity }
    #   end
    # end
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
