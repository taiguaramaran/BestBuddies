class RescuedAnimalsController < ApplicationController
  def index
    @animals = policy_scope(Animal).where.not(partner: nil)
  end

  # def show
  #   @animal = user.partner.animal
  #   authorize @animal
  # end
end
