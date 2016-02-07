FactoryGirl.define do
  factory :user do
    email "user@gmail.com"
    password  "password123"
  end
  factory :user_2, class: User do
    email "konska@konski.pl"
    password "passy123"
  end
end
