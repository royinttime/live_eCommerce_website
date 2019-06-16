class Product < ApplicationRecord

  belongs_to :store, inverse_of: :products, optional: true
  belongs_to :user, inverse_of: :products

end
