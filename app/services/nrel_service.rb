class NrelService
  def initialize(params)
    @params = params
    @connection = Faraday.new(url: "https://developer.nrel.gov/")
    @connection.headers["X-Api-Key"] = ENV['NREL_KEY']
  end

  def search_by_zip
    response = @connection.get "api/alt-fuel-stations/v1/nearest.json?location=#{@params[:zip]}&radius=6&fuel_type=ELEC,LPG"
    JSON.parse(response.body, symbolize_names: true)
  end
end
