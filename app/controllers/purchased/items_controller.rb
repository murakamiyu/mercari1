class Purchased::ItemsController < ApplicationController

  def index
    @items = Item.where(buyer_id: current_user.id).where(trading_status: 1)
  end

  def show
  end
end
