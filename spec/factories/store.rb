FactoryBot.define do
  factory :store, class: 'Store' do
    association :user, factory: :user, strategy: :build
  end
end
