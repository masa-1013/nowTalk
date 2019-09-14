class MessagesController < ApplicationController
  def index
    @messages = Message.all.order(created_at: "DESC")
    @newMessage = Message.new
  end

  def new
  end
end
