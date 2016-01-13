class UsersController < ApplicationController
  before_filter :authenticate_user!
  def index
    @users = User.all
    authorize User
  end
  def edit
    @user = User.find(params[:id])
    authorize @user
  end
end
