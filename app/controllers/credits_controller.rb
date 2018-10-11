class CreditsController < ApplicationController
  before_action :set_credit, only: [:destroy]

  def index
    @credit = Credit.find_by(user_id: current_user.id)
  end

  def new
    @credit = Credit.new
  end

  def create
    # Credit.create(num: credit_params[:num], expire_month: credit_params[:expire_month], expire_year: credit_params[:expire_year], security_code: credit_params[:security_code], user_id: current_user.id)
    Credit.create(credit_params)
    redirect_to mains_top_path
  end

  def destroy
    # credit = Credit.find(params[:id])
    @credit.destroy
    redirect_to mains_top_path
  end

  private

  def credit_params
    params.require(:credit).permit(:num, :expire_month, :expire_year, :security_code).merge(user_id: current_user.id)
  end

  def set_credit
    @credit = Credit.find(params[:id])
  end
end
