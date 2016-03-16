class UserToBoardsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_user_to_bards, only: [:edit, :update, :destroy]
  def index
    @user_to_boards = UserToBoard.all
  end

  def new
    @user_to_board = UserToBoard.new
  end

  def create
    @user_to_board = UserToBoard.new(user_to_boards_params)
    respond_to do |format|
      if @user_to_board.save
        format.html { redirect_to user_to_boards_path(@user_to_board), notice: 'User was assigned to forum' }
        format.json { render action: 'show', status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_to_board.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user_to_board.update(user_to_boards_params)
        format.html { redirect_to user_to_boards_path, notice: 'Assigned was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_to_board.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user_to_board.destroy
    respond_to do |format|
      format.html { redirect_to user_to_boards_path }
      format.json { head :no_content }
    end
  end

  private

  def set_user_to_bards
    @user_to_board = UserToBoard.find(params[:id])
  end

  def user_to_boards_params
    params.require(:user_to_board).permit(:user_id, :board_id, :is_moderator)
  end
end
