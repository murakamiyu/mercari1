class ItemsController < ApplicationController

  def new
    @item = Item.new(item_params)
    4.times { @item.images.build }
  end

  def create
    @item = Item.new(item_params)
    4.times { @item.images.build }
  end

  private

  def item_params
    params.require(:item).permit(
      :name,
      :text,
      :price,
      :condition,
      :shipping_payer,
      :shipping_method,
      :days_to_ship,
      :trading_status,
      :shipping_fee,
      :category_id,
      :brand_id,
      :size_id,
      :area_id,
      images_attributes: [:id, :image, :_destroy]
    )
  end

end
