class PurchasePre::ItemsController < ApplicationController
  before_action :move_to_sign_in, :move_to_new_address

  def show
  	@item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    if current_user.id == item.seller_id
      redirect_to root_path 
    else
      item.update(item_params) 
      @item = Item.find(params[:id])
      render 'purchase_confirmation' 
    end
  end

  private

  def item_params
    params.require(:item).permit(:buyer_id)
  end

  def move_to_sign_in
    redirect_to new_user_session_path unless user_signed_in?
  end

  def move_to_new_address
    redirect_to new_address_path unless current_user.address.present?
  end

end
