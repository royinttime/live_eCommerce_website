class ChatRoom < ApplicationRecord

  belongs_to :store, inverse_of: :chat_room, optional: true
  belongs_to :user, inverse_of: :chat_rooms

  validates :content, presence: true

end
