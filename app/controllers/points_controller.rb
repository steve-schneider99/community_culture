class PointsController < ApplicationController
  def index
    @points = Point.all
  end

  def show

  end

private

  def earn_points_params
    params.require(earn_points).permit(:business_type, :business_name, :business_email, :business_phone, :business_address, :title, :description, :point_value, :rate?, :earning_method)
  end

end
