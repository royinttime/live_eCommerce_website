class AddLiveRoomToProducts < ActiveRecord::Migration[5.2]
  def change
  	add_reference :products, :live_room, type: :uuid, foreign_key: { to_table: :live_rooms }, optional: true
  end
end
