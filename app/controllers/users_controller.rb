class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @users = User.new
  end
end
