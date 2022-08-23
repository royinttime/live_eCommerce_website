class Message < ApplicationRecord

  belongs_to :user, inverse_of: :message
  belongs_to :chat_room, inverse_of: :message

end
