class NrelService
  def initialize(location)
    @location = location
  end

  def get_station
    get_json
  end

  private

    def conn
      Faraday.new("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json") do |faraday|
        faraday.params['api_key'] = ENV['NREL_KEY']
        faraday.params['location'] = @location
        faraday.adapter Faraday.default_adapter
      end
    end

    def get_json
      response = conn.get
      JSON.parse(response.body, symbolize_names: true)
    end
end
