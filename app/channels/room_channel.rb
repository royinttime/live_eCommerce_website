class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel_#{params}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def current_product
  end
end
