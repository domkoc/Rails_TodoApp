class HomeController < ApplicationController
  layout 'guest'
  def index
    redirect_to user_session_path
  end
end
