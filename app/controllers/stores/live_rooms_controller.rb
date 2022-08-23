class Stores::LiveRoomsController < Stores::BaseController
  
  include ActionController::Live

  before_action :prepare_live_room, only: [:show]

  def show
  end

  def people_on_live_chat_room
    response.headers['Content-Type'] = 'text/event-stream'
    sse = SSE.new(response.stream)
    pubsub = ActionCable.server.pubsub
    channel_with_prefix = pubsub.send(:channel_with_prefix, RoomChannel.channel_name)
    channels = pubsub.send(:redis_connection).pubsub('channels', "#{channel_with_prefix}:*")
    sse.write(channels.count)
  ensure
    response.stream.close
  end

  private

  def prepare_live_room
  	@live_room = LiveRoom.find(params[:id])
  end

end
