require 'rails_helper'

RSpec.describe Product, type: :model do
  it { is_expected.to belong_to(:live_room).inverse_of(:product).optional }
  it { is_expected.to belong_to(:store).inverse_of(:products).optional }
  it { is_expected.to belong_to(:user).inverse_of(:products) }
end
