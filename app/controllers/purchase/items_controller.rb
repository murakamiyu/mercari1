class Purchase::ItemsController < ApplicationController

  def index
    @items = Item.where(buyer_id: current_user.id).where(trading_status: 0)
  end

  def show
  end
end
