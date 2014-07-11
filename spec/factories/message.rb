FactoryGirl.define do
  factory :message do
    association :sender, factory: :user
    association :recipient, factory: :user
    body "Wazzzzzup!?"
    media_url "http://i.imgur.com/RV1BwzL.jpg"
  end
end
