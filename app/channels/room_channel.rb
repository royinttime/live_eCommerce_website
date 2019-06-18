class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel_#{params[:live_room_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def current_product(data)
  end
end
