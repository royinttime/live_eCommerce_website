FactoryBot.define do
  factory :live_room, class: 'LiveRoom' do
    association :store, factory: :store, strategy: :build

    sequence(:title) { |n| "Title #{n}" }
  end
end
