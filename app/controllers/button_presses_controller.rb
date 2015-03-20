class ButtonPressesController < ApplicationController

  before_filter :require_name

  def create
    ButtonPress.transaction do
      @button_press = ButtonPress.new(button_press_params)
      @chat_room = ChatRoom.find(@button_press.chat_room_id)
      @button_press.presser_name = session[:name]
      @button_press.save!
      sync_update @chat_room, scope: "chat-room-#{@chat_room.id}-tally"
    end

    render nothing: true
  end

private

  def button_press_params
    params.require(:button_press).permit(:chat_room_id)
  end

end
