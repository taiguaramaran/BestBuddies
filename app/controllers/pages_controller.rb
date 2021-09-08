class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @animals = Animal.where.not(partner: nil)
    @adoptions = Adoption.all.order(:created_at)
  end

  def user_profile
    @user = current_user
  end

  def adopted_pets
    @user = current_user
    @adoption = Adoption.all
    authorize Animal, :adopted_pets?
    @user_adoption = @adoption.select do |adoption|
      adoption.user == current_user
    end
  end

  def know_more
  end
end
