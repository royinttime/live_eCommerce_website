class Store < ApplicationRecord

  belongs_to :user, inverse_of: :stores
  has_many :products, inverse_of: :store, dependent: :nullify
  has_one :live_channel, inverse_of: :store, dependent: :destroy

end
