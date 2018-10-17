class UsersController < ApplicationController

  def show
    @purchase_items = Item.where(buyer_id: current_user.id).where(trading_status: 0)
    @purchased_items = Item.where(buyer_id: current_user.id).where(trading_status: 1)
  end

  def notification
  end

  def todo
  end

  def like_history
  end

  def news
  end

  def review_history
  end

  def review_history_great
  end

  def review_history_good
  end

  def review_history_poor
  end

end
