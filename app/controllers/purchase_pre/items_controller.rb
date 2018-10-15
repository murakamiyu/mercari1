class PurchasePre::ItemsController < ApplicationController
  before_action :move_to_new_payjp

  def show
  	@item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)

    amount = item.price
    customer = Customer.find_by(user_id: current_user.id)
    customer = customer.token
    Payjp.api_key = 'sk_test_239330b9aad9f2b589277acb'
    Payjp::Charge.create(
      amount:   amount,
      customer: customer,
      currency: 'jpy'
    )

    if item.buyer_id?
      @item = Item.find(params[:id])
      render 'purchase_confirmation'
    end
  end

  private

  def item_params
    params.require(:item).permit(:buyer_id)
  end

  def move_to_new_payjp
    redirect_to new_payjp_path unless current_user.customer.present?
  end

end
