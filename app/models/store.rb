class Store < ApplicationRecord

  belongs_to :user, inverse_of: :stores
  has_many :products, inverse_of: :store, dependent: :nullify
  has_one :live_room, inverse_of: :store, dependent: :destroy
  has_one :chat_room, inverse_of: :store, dependent: :destroy

  after_create :create_default_live_room

  private

  def create_default_live_room
  	LiveRoom.create!(store: self)
  end

  def live_room_params
  	{
  	  store: self,
  	  live: false,
  	  title: name,
  	  displayed_text: 'Hello World'
  	}
  end

end
