class AddYoutubeChannelIdToStores < ActiveRecord::Migration[5.2]
  def change
  	add_column :stores, :youtube_channel_id, :string
  end
end
