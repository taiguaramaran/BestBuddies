class PartnersController < ApplicationController
  def index
    @partners = policy_scope(Partner)
  end

  def become_partner
    authorize Partner
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

  def destroy
    @partner = Partner.find(params[:id])
    authorize @partner
    @partner.destroy

    redirect_to partners_path
  end

  private

  def partner_params
    params.require(:partner).permit(:name, :address)
  end
end
