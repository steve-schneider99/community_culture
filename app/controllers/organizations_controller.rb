class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all
  end

  def show

  end

private

  def earn_points_params
    params.require(earn_points).permit(:business_type, :business_name, :business_email, :business_phone, :business_address)
  end

end
