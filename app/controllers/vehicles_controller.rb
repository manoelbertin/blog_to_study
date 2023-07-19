class VehiclesController < ApplicationController
  def index # aqui mostro a listagem de veículos
    @vehicles = Vehicle.all.order(created_at: :desc)
  end

  def new # aqui é do frontend
    @vehicle = Vehicle.new
  end

  def create # aqui é do backend
    @vehicle = Vehicle.new(vehicle_params)
  end

  def show # aqui mostro 1 por vez
    @vehicle = Vehicle.find(params[:id])
  end
  private

  def vehicle_params # strong parameters
    params.require(:vehicle).permit(:brand, :model, :year, :plate, :kind)
  end
end
