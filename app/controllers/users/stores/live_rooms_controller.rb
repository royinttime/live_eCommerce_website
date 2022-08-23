class Users::Stores::LiveRoomsController < ApplicationController

  include ActionController::Live
  
  before_action :prepare_live_room, only: [:edit]

  def edit
  end

  def udpate
  end

  def people_on_live_chat_room
  end

  private

  def prepare_live_room
  	@live_room ||= LiveRoom.find(params[:id])
  end

end
