class Profile::UsersController < ApplicationController

  def edit
  end

  def update
    current_user.update(profile_params)
    redirect_to user_path(current_user)
  end

  private

  def profile_params
    params.require(:user).permit(:nickname, :introduction)
  end
end
