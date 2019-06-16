class Store < ApplicationRecord

  belongs_to :user, inverse_of: :stores
  has_many :products, inverse_of: :store, dependent: :nullify

end
