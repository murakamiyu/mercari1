class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :purchase_pre_confirmation]

  def index
    @item1s = Item.limit(4).order("created_at DESC")
    @item2s = Item.limit(4)
    @item3s = Item.limit(4)
    @item4s = Item.limit(4)
    @item5s = Item.limit(4)
    @item6s = Item.limit(4)
    @item7s = Item.limit(4)
  end

  def show
    @images = @item.images
  end

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
  end

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

  def set_item
    @item = Item.find(params[:id])
  end
end
