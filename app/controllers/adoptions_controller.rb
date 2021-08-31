class AdoptionsController < ApplicationController
  def show
    @adoption = Adoption.find(params[:id])
  end

  def create
    @adoption = Adoption.new
    @animal = Animal.find(params[:animal_id])
    @adoption.animal = @animal
    @adoption.user = current_user
    if @adoption.save
      redirect_to adopted_pets_path
    else
      redirect_to animal_path(@animal)
    end
  end
end
