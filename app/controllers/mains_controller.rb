class MainsController < ApplicationController
  before_action :authenticate_user!

def index
	render action: 'mypage-sidebar'
end

end
