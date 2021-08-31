class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @nimals = Animal.all.first(6)
    @animals_rand = Animal.all.sample(3)
  end

  def user_profile
    @user = current_user
  end

  def adopted_pets
    @user = current_user
    @adoption = Adoption.all
    @user_adoption = @adoption.select do |adoption|
      adoption.user == current_user
    end
  end
end
