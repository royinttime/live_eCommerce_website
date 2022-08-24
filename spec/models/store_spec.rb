require 'rails_helper'

RSpec.describe Store, type: :model do
  it { is_expected.to belong_to(:user).inverse_of(:stores) }

  it { is_expected.to have_many(:products).inverse_of(:store).dependent(:nullify) }
  it { is_expected.to have_one(:live_room).inverse_of(:store).dependent(:destroy) }
  it { is_expected.to have_one(:chat_room).inverse_of(:store).dependent(:destroy) }
end
