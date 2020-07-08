class AirplanesController < ApplicationController
  def index
    @airplanes = Airplane.all
  end

  def new
    @airplane = Airplane.new
  end
end
