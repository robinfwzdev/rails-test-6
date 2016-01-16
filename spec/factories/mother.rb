FactoryGirl.define do
  factory :mother, parent: :user, class: Mother do
    sequence(:name)   { |n| "Mother #{n}"}
  end
end
