class ItemsController < ApplicationController

  def new
    @item = Item.new
    4.times { @item.images.build }
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to :root
    else
      redirect_to ({ action: new }), alert: '出品に失敗しました'
    end
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
      images_attributes: [:id, :image, :item_id, :_destroy]
    )
  end

end

