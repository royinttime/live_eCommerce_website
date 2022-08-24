require 'rails_helper'

RSpec.describe LiveRoom, type: :model do
  it { is_expected.to belong_to(:store).inverse_of(:live_room) }

  it { is_expected.to have_one(:product).inverse_of(:live_room).dependent(:nullify) }
end
