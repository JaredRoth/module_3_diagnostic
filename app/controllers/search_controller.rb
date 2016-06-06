class SearchController < ApplicationController
  def index
    params[:zip]

    GET /api/alt-fuel-stations/v1/nearest.json?api_key=DEMO_KEY&location=1617+Cole+Blvd+Golden+CO&fuel_type=ELEC&limit=1
  end
end
