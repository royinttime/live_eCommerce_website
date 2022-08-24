class ChangePrivateOfChatRoomsToIsPrivate < ActiveRecord::Migration[6.1]
  def change
    rename_column :chat_rooms, :private, :is_private
  end
end
