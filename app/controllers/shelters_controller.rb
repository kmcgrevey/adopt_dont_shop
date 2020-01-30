class SheltersController <ApplicationController

  def index
    @shelters = Shelter.all
    require "pry"; binding.pry
  end

  def show
    @shelter = Shelter.find(params[:id])
  end
end
