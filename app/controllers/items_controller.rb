class ItemsController < ApplicationController

  def new
    @item = Item.new
    @item.images.build
  end

  def create
    Item.create(item_params)
    redirect_to root_path
  end

  def index
  	@item1s = Item.all
  	@item2s = Item.limit(4)
  	@item3s = Item.limit(4)
  	@item4s = Item.limit(4)
  	@item5s = Item.limit(4)
  	@item6s = Item.limit(4)
  	@item7s = Item.limit(4)
  end

  def show
  	@item = Item.find(params[:id])
    @images = @item.images
  end

  private

  def item_params
    params.require(:item).permit(
      :name,
      :text,
      :price,
      images_attributes: [:image]
    )
  end
end
