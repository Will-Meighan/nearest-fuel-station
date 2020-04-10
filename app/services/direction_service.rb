class DirectionService
  def initialize(origin, destination)
    @origin = origin
    @destination = destination
  end

  def get_directions
    get_json
  end

  private

    def conn
      Faraday.new("https://maps.googleapis.com/maps/api/directions/json") do |faraday|
        faraday.params['origin'] = @origin
        faraday.params['destination'] = @destination
        faraday.params['key'] = ENV['GOOGLE_MAPS_KEY']
        faraday.adapter Faraday.default_adapter
      end
    end

    def get_json
      response = conn.get
      JSON.parse(response.body, symbolize_names: true)
    end
end
