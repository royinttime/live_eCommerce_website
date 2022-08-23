class CreateChatRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :chat_rooms, id: :uuid do |t|
      t.belongs_to :store, type: :uuid, index: true, foreign_key: { to_table: :stores }
      t.belongs_to :user, type: :uuid, null: false, index: true, foreign_key: { to_table: :users }
      t.boolean :private, null: false, default: false

      t.timestamps
    end
  end
end
