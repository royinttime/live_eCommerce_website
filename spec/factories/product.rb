FactoryBot.define do
  factory :product, class: 'Product' do
    association :live_room, factory: :live_room, strategy: :build
    association :user, factory: :user, strategy: :build
    association :store, factory: :store, strategy: :build
  end
end
