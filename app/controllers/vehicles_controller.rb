class VehiclesController < ApplicationController
  before_action :fetch_vehicle, except: %i[ index new create ]

  def index # aqui mostro a listagem de veículos
    @vehicles = Vehicle.all.order(created_at: :desc)
  end

  def new # aqui é do frontend
    @vehicle = Vehicle.new
  end

  def create # aqui é do backend
    @vehicle = Vehicle.new(vehicle_params)

    if @vehicle.save
      redirect_to vehicle_path(@vehicle)
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @vehicle.update(vehicle_params)
      redirect_to vehicle_path(@vehicle)
    else
      render :edit
    end
  end

  def destroy
    @vehicle.destroy
    redirect_to vehicles_path
  end


  private

  def fetch_vehicle 
    @vehicle = Vehicle.find(params[:id])
  end

  def vehicle_params # strong parameters
    params.require(:vehicle).permit(:id, :brand, :model, :year, :plate, :kind)
  end
end
