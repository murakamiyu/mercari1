class ItemsController < ApplicationController

  def new
    @item = Item.new(create_params)
    4.times { @item.images.build }
  end


  private

  def create_params
    params.require(:item).permit(images_attributes: [:id, :image])
  end

end
