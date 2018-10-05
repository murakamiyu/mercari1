class TestsController < ApplicationController
  def index
  end

  def item_detail
  end

  def order_status
  end

  def purchase_pre_confirmation
    render :layout => false
  end

  def purchase_confirmation
    render :layout => false
  end

  def account
    render
  end

  def sms_confirmation
    render :layout => nil
  end

  def adress_new
    render :layout => nil
  end

  def credit_new
    render :layout => nil
  end

  def account_completion
    render :layout => nil
  end

  def putting_item
    render :layout => nil
  end

end
