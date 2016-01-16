FactoryGirl.define do
  factory :user do
    sequence(:name)   { |n| "User #{n}"}
    dob             '06/04/1990'
    first_name      'robin'
    last_name       'hood'
  end
end
