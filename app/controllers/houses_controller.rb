class HousesController < ApplicationController
  # A frequent practice is to place the standard CRUD actions in each controller in the following order: index, show, new, edit, create, update and destroy.
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def edit
    @house = House.find(params[:id])
  end

  def create
    @house = House.new house_params
    if @house.save
      redirect_to @house
    end
  end

  def update
    @house = House.find(params[:id])

    if @house.update(house_params)
      redirect_to @house
    else
      render 'edit'
    end
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to houses_path
  end


  private
  def house_params
    params.require(:house).permit(:name, :words, :sigil_url)
  end
end
