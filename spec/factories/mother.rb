FactoryGirl.define do
  factory :mother, parent: :user, class: Mother do
    first_name 'Mirrinda'
    last_name  'da'
  end
end
