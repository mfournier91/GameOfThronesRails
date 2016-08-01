class HousesController < ApplicationController
# A frequent practice is to place the standard CRUD actions in each controller in the following order: index, show, new, edit, create, update and destroy.
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end
end
