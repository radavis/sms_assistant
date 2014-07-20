FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "sms_user#{n}" }
    sequence(:phone, 3214567890) { |n| n }
    country
  end
end
