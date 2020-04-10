class SearchController < ApplicationController

  def index
    @fuel_facade = FuelFacade.new(params['location'])
  end

end
