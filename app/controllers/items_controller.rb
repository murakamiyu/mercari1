class ItemsController < ApplicationController

  def new
  end

  def index
  	@item1s = Item.limit(4)
  	@item2s = Item.limit(4)
  	@item3s = Item.limit(4)
  	@item4s = Item.limit(4)
  	@item5s = Item.limit(4)
  	@item6s = Item.limit(4)
  	@item7s = Item.limit(4)
  end

  def show
  	@item = Item.find(params[:id])
  end

end
