class MessagesController < ApplicationController
  
  def index
    @message = Message.new
    @messages = Message.all
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      
    else
      
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :text)
  end


end
