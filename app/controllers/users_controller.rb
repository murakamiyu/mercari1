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

  def listings_listing
  end

  def listings_in_progress
  end

  def listings_completed
  end

  def purchase
  end

  def purchased
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

  def edit
  end

  def update
    current_user.update(user_params)
    redirect_to mains_top_path
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :introduction)
  end
end
