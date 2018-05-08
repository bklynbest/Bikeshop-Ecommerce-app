FactoryBot.define do
  sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
    email
    password "12345643"
    first_name "Jonathan"
    last_name "Momperousse"
    admin false
  end

  factory :admin, class: User do
    email
    password "234234234"
    admin true 
  end
end
