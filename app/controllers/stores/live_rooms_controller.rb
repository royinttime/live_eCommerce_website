class Stores::LiveRoomsController < ApplicationController
  
  before_action :prepare_live_room, only: [:show]

  def show
  end

  private

  def prepare_live_room
  	@live_room ||= LiveRoom.find(params[:id])
  end

end
