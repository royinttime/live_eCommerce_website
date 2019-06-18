class Users::Stores::LiveRoomsController < ApplicationController
  
  before_action :prepare_live_room, only: [:edit]

  def edit
  end

  def udpate
  end

  private

  def prepare_live_room
  	@live_room ||= LiveRoom.find(params[:id])
  end

end
