class NrelService
  @connection = Faraday.new(url: "https://api.github.com/")
end


GET /api/alt-fuel-stations/v1/nearest.json?api_key=DEMO_KEY&location=1617+Cole+Blvd+Golden+CO&fuel_type=ELEC&limit=1
