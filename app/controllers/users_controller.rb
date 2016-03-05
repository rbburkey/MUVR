class UsersController < ApplicationController
  def portal
  end

  def profile
  end

  def index
    @users = User.all
  end
end
