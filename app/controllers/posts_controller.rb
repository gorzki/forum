class PostsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_post, only: [:show,  :edit, :update, :destroy, :edit_ajax]
  before_action :set_board
  before_action :set_user
  after_action  :verify_authorized, only: :index

  def index
    @posts = Post.all.where(:board_id => @board.id)
    @post = Post.new
    authorize @posts
  end
  def show
    authorize @post
  end
  def edit_ajax
    authorize @post
    respond_to do |format|
      format.js
    end
  end

  def create

    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.js
      else
        format.js
      end
    end
  end

  def update
    authorize @post
    respond_to do |format|
      if @post.update(post_params)
        format.js
      else
        format.js
      end
    end
  end

  def destroy
    user = User.find(params[:id])
    authorize user
    @post.destroy
    respond_to do |format|
      format.js
    end
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def set_board
      @board = Board.find(params[:board_id])
    end

    def set_user
      @user = User.find(current_user.id)
    end

    def post_params
      params.require(:post).permit(:title, :description, :board_id, :user_id)
    end
end
