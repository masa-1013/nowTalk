class MessagesController < ApplicationController
  def index
    @messages = Message.all.order(created_at: "ASC")
    @newMessage = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to action: 'index'
    else
      render index
    end
  end
end

private

def message_params
  params.require(:message).permit(:content)
end