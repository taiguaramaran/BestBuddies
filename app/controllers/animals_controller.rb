class AnimalsController < ApplicationController
  def index
    @animals = policy_scope(Animal).where(partner: nil)
    authorize Animal
  end

  def new
    @animal = Animal.new
    authorize @animal
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user
    authorize @animal
    if @animal.save
      redirect_to confirmation_path
    else
      render :new
    end
  end

  def show
    @animal = Animal.find(params[:id])
    authorize @animal
  end

  def edit
    @animal = Animal.find(params[:id])
    authorize @animal
  end

  def update
    @animal = Animal.find(params[:id])
    authorize @animal
    if @animal.update(animal_params)
      redirect_to animal_path(@animal)
    else
      render :edit
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    authorize @animal
    redirect_to animals_path
  end

  def rescue
    @animal = Animal.find(params[:id])
    authorize @animal
    @animal.partner = current_user.partner
    @animal.save
    redirect_to animals_path
  end

  def confirmation
    authorize Animal
  end

  def my_animals
    @animals = policy_scope(Animal).where(user: current_user)
    authorize Animal
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :breed, :category, :size, :gender, :age, :description, photos: [])
  end
end
