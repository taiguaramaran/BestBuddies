class RescuedAnimalsController < ApplicationController
  def index
    @animals = policy_scope(Animal).where.not(partner: nil)
  end
end
