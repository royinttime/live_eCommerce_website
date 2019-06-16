class AddLiveStreamingUrlToStores < ActiveRecord::Migration[5.2]
  def change
  	add_column :stores, :live_streaming_url, :string
  end
end
