class MessegesController < ApplicationController
  before_action :set_messege, only: [:show, :edit, :update, :destroy]
  def index
    @messeges = Messege.all
  end

  def show
  end

  def new
    @messege = Messege.new
  end

  def create
    @messege = Messege.new(messege_params)

    respond_to do |format|
      if @messege.save
        format.html { redirect_to messeges_path, notice: 'Messege was successfully created.' }
        format.json { render action: 'show', status: :created, louserion: @messege }
      else
        format.html { render action: 'new' }
        format.json { render json: @forum.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @messege.update(messege_params)
        format.html { redirect_to messeges_path, notice: 'Messege was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @messege.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  private
    def set_messege
      @messege = Messege.find(params[:id])
    end

    def messege_params
      params.require(:messege).permit(:title, :description, :sender_id, :receiver_id)
    end
end
