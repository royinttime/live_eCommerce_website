class RoomChannel < ApplicationCable::Channel
  def subscribed
    return if params['live_room_id'].blank?
    connection.server.connections.each do |conn|

        byebug
        conn_hash = {}

        conn_hash[:current_user] = conn.current_user

        conn_hash[:subscriptions_identifiers] = conn.subscriptions.identifiers.map {|k| JSON.parse k}

        connections_array << conn_hash

    end
    stream_from "room_channel_#{params['live_room_id']}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def current_product(data)
  end
end
