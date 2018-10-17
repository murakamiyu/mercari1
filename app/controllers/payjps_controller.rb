class PayjpsController < ApplicationController

  def new
  end

  def create
    Payjp.api_key = 'sk_test_239330b9aad9f2b589277acb'
    customer = Payjp::Customer.create(
      :card  => params['payjp-token']
    )
    Customer.create(token: customer.id, user_id: current_user.id)
    redirect_to user_path(current_user)
  end
end
