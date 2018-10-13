class PurchasePre::ItemsController < ApplicationController
  
  def show
  	@item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params) 
    if item.buyer_id?
      @item = Item.find(params[:id])
      render 'purchase_confirmation' 
    end
  end

  private

  def item_params
    params.require(:item).permit(:buyer_id)
  end

end
