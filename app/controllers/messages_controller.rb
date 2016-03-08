class MessagesController < ApplicationController
  before_action :set_message, only: [:edit, :update, :destroy]
  before_filter :authenticate_user!
  def index
    @messages = Message.all.where(:parent_id => nil)
  end

  def show
    @message = Message.find(params[:id])
    @messages = Message.all.where(:parent_id => params[:id])
  end

  def new
    @message = Message.new
  end

  def respond
    @respond_message = Message.find(params[:id])
    @message = Message.new
  end

  def respond_create
    @message = Message.new(message_params)

    respond_to do |format|
      if @message.save
        format.html { redirect_to message_path(@message.parent_id), notice: 'message was successfully created.' }
        format.json { render action: 'show', status: :created}
      else
        format.html { render action: 'new' }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @message = Message.new(message_params)

    respond_to do |format|
      if @message.save
        format.html { redirect_to message_path(@message), notice: 'message was successfully created.' }
        format.json { render action: 'show', status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to messages_path, notice: 'message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  private
    def set_message
      @message = Message.find(params[:id])
    end

    def message_params
      params.require(:message).permit(:title, :description, :sender_id, :receiver_id, :parent_id)
    end
end
