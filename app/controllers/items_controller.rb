class ItemsController < ApplicationController

  def new
    @item = Item.new
    4.times { @item.images.build }
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to root_path
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params) 
    if item.buyer_id?
      redirect_to root_path
    end
  end

  def purchase_pre_confirmation
    @item = Item.find(params[:id])
  end

  # def purchase_confirmation
  #   @item = Item.find(params[:id])
  # end

  private

  def item_params
    params.require(:item).permit(
      :name,
      :text,
      :price,
      :seller_id,
      :buyer_id,
      images_attributes: [:image]
    )
  end
end
