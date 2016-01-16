FactoryGirl.define do
  factory :father, parent: :user, class: Father do
    sequence(:name)   { |n| "Father #{n}"}
  end
end
