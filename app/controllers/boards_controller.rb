class BoardsController < ApplicationController
  before_action :set_board, only: [:show,  :edit, :update, :destroy]
  before_filter :authenticate_user!

  def index
    @boards = Board.all
  end

  def show
    @posts = Post.all
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)

    respond_to do |format|
      if @board.save
        format.html { redirect_to board_path(@board), notice: 'board was successfully created.' }
        format.json { render action: 'show', status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @board.update(board_params)
        format.html { redirect_to boards_path, notice: 'board was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @board.destroy
    respond_to do |format|
      format.html { redirect_to boards_path }
      format.json { head :no_content }
    end
  end

  private
    def set_board
      @board = Board.find(params[:id])
    end

    def board_params
      params.require(:board).permit(:title)
    end
end
