require 'rails_helper'

RSpec.describe ChatRoom, type: :model do
  it { is_expected.to belong_to(:store).inverse_of(:chat_room).optional }
  it { is_expected.to belong_to(:user).inverse_of(:chat_rooms) }

  it { is_expected.to have_many(:messages).inverse_of(:chat_room).dependent(:destroy) }
end
