class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all.order(created_at: :desc)
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
  end
end
