require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to have_many(:messages).inverse_of(:user).dependent(:destroy) }
  it { is_expected.to have_many(:stores).inverse_of(:user).dependent(:destroy) }
  it { is_expected.to have_many(:products).inverse_of(:user).dependent(:destroy) }
  it { is_expected.to have_many(:chat_rooms).inverse_of(:user).dependent(:nullify) }
end
