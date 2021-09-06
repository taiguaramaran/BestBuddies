class AdoptionsController < ApplicationController
  def show
    @adoption = Adoption.find(params[:id])
  end

  def create
    @adoption = Adoption.new
    authorize @adoption
    @animal = Animal.find(params[:animal_id])
    if Adoption.user_animals_adopted(current_user).include?(@animal)
      flash.alert = "You have already adopted this pet."
      redirect_to animal_path(@animal)
      return
    end
    @adoption.animal = @animal
    @adoption.user = current_user
    if @adoption.save
      redirect_to adopted_pets_path
    else
      redirect_to animal_path(@animal)
    end
  end
end
