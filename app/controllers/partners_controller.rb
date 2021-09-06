class PartnersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :become_partner]
  before_action :skip_authorization, only: :become_partner
  def index
    @partners = policy_scope(Partner)
  end

  def become_partner
  end

  def show
    @partner = Partner.find(params[:id])
    authorize @partner
  end

  def new
    @partner = Partner.new
    authorize @partner
  end

  def create
    @partner = Partner.new(partner_params)

    authorize @partner
    if @partner.save
      @user = current_user
      @user.partner = @partner
      @user.update(partner: @partner)
      redirect_to partner_path(@partner)
    else
      render :new
    end
  end

  def edit
    @partner = Partner.find(params[:id])
    authorize @partner
  end

  def update
    @partner = Partner.find(params[:id])
    authorize @partner

    if @partner.update(partner_params)
      redirect_to partner_path(@partner)
    else
      render :edit
    end
  end

  private

  def partner_params
    params.require(:partner).permit(:name, :address)
  end

end
