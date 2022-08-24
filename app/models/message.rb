class Message < ApplicationRecord

  belongs_to :user, inverse_of: :messages
  belongs_to :chat_room, inverse_of: :messages

  validates :content, presence: true

end
