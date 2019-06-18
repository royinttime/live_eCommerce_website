class CreateLiveRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :live_rooms, id: :uuid do |t|
      t.belongs_to :store, type: :uuid, null: false, index: true, foreign_key: { to_table: :stores }
      t.boolean :live
      t.string :title
      t.string :displayed_text

      t.timestamps
    end
  end
end
