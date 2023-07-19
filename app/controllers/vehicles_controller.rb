class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all.order(created_at: :desc)
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(params[:vehicle])
  end

  private

  def vehicle_params 
  end
end
