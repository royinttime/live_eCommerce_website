class LiveRoom < ApplicationRecord

  belongs_to :store, inverse_of: :live_room
  has_one :product, inverse_of: :live_room, dependent: :nullify

end
