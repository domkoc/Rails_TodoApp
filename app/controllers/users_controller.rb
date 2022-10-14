class UsersController < ApplicationController
  layout 'guest', only: [:new]
  def new
    @user = User.new
  end
end
