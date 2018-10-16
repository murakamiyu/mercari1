class Listings::ItemsController < ApplicationController

  def index
    @items = Item.where(seller_id: current_user.id).where(buyer_id: nil)
  end

  def show
  end
end
