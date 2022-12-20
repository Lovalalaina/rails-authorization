class CarsController < ApplicationController

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to car_path(@car)
    else
      render :new, status: :unprocessable_entity
  end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new

  end

  def index
    @cars = car.all
  end

  def edit
    @car = Car.find(params[:id])
    @car.user = current_user
    @car.save
    redirect_to cars_path

  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    redirect_to car_path(@car)

  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path, status: :see_other
  end

  private

  def car_params
    params.require (car).permit(:brand, :model, :price)
  end


end
