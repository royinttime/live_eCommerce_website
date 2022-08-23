class LiveRoom < ApplicationRecord

  belongs_to :store, inverse_of: :live_room
  has_one :product, inverse_of: :live_room, dependent: :nullify

  after_save :broadcast_the_product

  private

  def broadcast_the_product
    ActionCable.server.broadcast("room_channel_#{params[:id]}", { product: product&.name })
  end

end
