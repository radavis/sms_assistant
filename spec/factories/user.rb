FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "sms_user#{n}" }
    sequence(:phone, 1234567890) { |n| n }
  end
end
