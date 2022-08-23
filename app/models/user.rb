class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages, inverse_of: :user, dependent: :destroy
  has_many :stores, inverse_of: :user, dependent: :destroy
  has_many :products, inverse_of: :user, dependent: :destroy
  has_many :chat_rooms, inverse_of: :user, dependent: :nullify

end
