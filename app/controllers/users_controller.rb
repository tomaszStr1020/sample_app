class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def show
    @user = User.find(params[:id])
    # debugger
  end
  def index
    @user = User.all

  end
end
