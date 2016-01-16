FactoryGirl.define do
  factory :father, parent: :user, class: Father do
    first_name 'Oscar'
    last_name  'Brazil'
  end
end
