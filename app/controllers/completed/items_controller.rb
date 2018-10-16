class Completed::ItemsController < ApplicationController

  def index
    @items = Item.where(seller_id: current_user.id).where.not(buyer_id: nil).where(trading_status: 1)
  end

  def show
  end
end
