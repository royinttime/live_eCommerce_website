FactoryBot.define do
  factory :message, class: 'Message' do
    association :user, factory: :user, strategy: :build
    association :chat_room, factory: :chat_room, strategy: :build

    content { 'Hello World' }
  end
end
