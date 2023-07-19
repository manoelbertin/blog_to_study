class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all.order(created_at: :desc)
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
  end

  private

  def vehicle_params # strong parameters
    params.require(:vehicle).permit(:brand :model :year :plate :kind)
  end
end
