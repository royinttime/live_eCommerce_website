class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages, id: :uuid do |t|
      t.belongs_to :user, type: :uuid, null: false, index: true, foreign_key: { to_table: :users }
      t.belongs_to :chat_room, type: :uuid, null: false, index: true, foreign_key: { to_table: :chat_rooms }
      t.string :content, null: false

      t.timestamps
    end
  end
end
