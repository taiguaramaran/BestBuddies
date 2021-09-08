class RescuedAnimalsController < ApplicationController
  def rescued_animals
    @animals = policy_scope(Animal).where.not(partner: nil)
    authorize Animal, :rescued_animals?
  end
end
