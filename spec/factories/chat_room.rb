FactoryBot.define do
  factory :chat_room, class: 'ChatRoom' do
    association :store, factory: :store, strategy: :build
    association :user, factory: :user, strategy: :build
  end
end
