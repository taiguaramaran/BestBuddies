class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @nimals = Animal.all.first(6)
    @animals_rand = Animal.all.sample(3)
  end

  def user_profile
    @user = current_user
  end
end
