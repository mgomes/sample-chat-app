class MoveButtonPressesUnderChatRooms < ActiveRecord::Migration
  def change
    add_column :button_presses, :chat_room_id, :integer

    add_index :button_presses, :chat_room_id
  end
end
