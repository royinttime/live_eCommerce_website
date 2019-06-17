class AddLiveChannelToProducts < ActiveRecord::Migration[5.2]
  def change
  	add_reference :products, :live_channel, type: :uuid, foreign_key: { to_table: :live_channels }, optional: true
  end
end
