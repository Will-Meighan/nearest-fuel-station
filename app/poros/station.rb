class Station
  attr_reader :address, :name, :access_time, :fuel_type

  def initialize(data)
    @data = data[:fuel_stations][0]
    @address = "#{@data[:street_address]}, #{@data[:city]}, #{@data[:state]} #{@data[:zip]}"
    @name = @data[:station_name]
    @access_time = @data[:access_days_time]
    @fuel_type = @data[:fuel_type_code]
  end

end
