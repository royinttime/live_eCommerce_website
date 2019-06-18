class Product < ApplicationRecord

  belongs_to :live_room, inverse_of: :product, optional: true
  belongs_to :store, inverse_of: :products, optional: true
  belongs_to :user, inverse_of: :products

end
