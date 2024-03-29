require 'rails_helper'

RSpec.describe Message, type: :model do
  it { is_expected.to belong_to(:user).inverse_of(:messages) }
  it { is_expected.to belong_to(:chat_room).inverse_of(:messages) }

  it { is_expected.to validate_presence_of(:content) }
end
