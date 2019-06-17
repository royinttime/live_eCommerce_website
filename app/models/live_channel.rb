class LiveChannel < ApplicationRecord

  belongs_to :store, inverse_of: :live_channel
  has_one :product, inverse_of: :live_channel, dependent: :nullify

end
