FactoryGirl.define do
  factory :user do
    name "Example User"
    sequence(:email) { |n| "example_user#{n}@example.com" }
    password "foobar"
    password_confirmation "foobar"
  end

end
