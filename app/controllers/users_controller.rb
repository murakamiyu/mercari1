class UsersController < ApplicationController

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
