class PostsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_post, only: [:show,  :edit, :update, :destroy, :edit_ajax]
  before_action :set_board
  before_action :set_user

  def index
    @posts = Post.all.where(:board_id => @board.id)
    @post = Post.new
    authorize Post
  end
  def show
    authorize @post
  end

  def new
    @post = Post.new
    authorize @post
  end

  def edit_ajax
    authorize @post
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def create

    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to board_post_path(@board,@post), notice: 'post was successfully created.' }
        format.json { render action: 'show', status: :created }
        format.js
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def update
    authorize @post
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to board_post_path, notice: 'post was successfully updated.' }
        format.json { head :no_content }
        format.js
      else
        format.html { render action: 'edit' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def destroy
    user = User.find(params[:id])
    authorize user
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_path }
      format.json { head :no_content }
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
      @user = current_user
    end

    def post_params
      params.require(:post).permit(:title, :description, :board_id, :user_id)
    end
end
