class MessagesController < ApplicationController

  before_filter :require_name

  def index
    @messages = Message.all.order('created_at ASC')
    @chat_room = ChatRoom.first
  end

  def create
    Message.transaction do
      @message = Message.new(message_params)
      @message.poster_name = session[:name]
      @message.save!
      sync_new @message, scope: 'messages'
    end

    render nothing: true
  end

private

  def message_params
    params.require(:message).permit(:message)
  end

end
