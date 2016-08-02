class CharactersController < ApplicationController
  def index
    @house = House.find(params[:house_id])
    @characters = @house.characters
  end
  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def edit
    @character = Character.find(params[:id])
  end

  def create
    @character = Character.new character_params
    if @character.save
      redirect_to @character
    end
  end

  def update
    @character = Character.find(params[:id])
    if @character.update(character_params)
      redirect_to house_characters_path(@character.house, @character)
    else
      render 'edit'
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to characters_path
  end

  def all_characters
    @characters = Character.all
  end

private
def character_params
  params.require(:character).permit(:name, :photo_url)
end

end
