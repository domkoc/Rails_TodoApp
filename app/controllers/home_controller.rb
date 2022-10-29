class HomeController < ApplicationController
  layout 'guest'
  def login
  end
  def index
    redirect_to home_login_url
  end
end
