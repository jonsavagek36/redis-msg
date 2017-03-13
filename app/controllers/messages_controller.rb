class MessagesController < ApplicationController

  def index
    @messages = Message.receive
  end

  def create
    Message.send(params[:content])
    redirect_to messages_path
  end

end
