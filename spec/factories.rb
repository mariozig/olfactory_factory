FactoryGirl.define do
  factory :thing do
    sequence(:name) { |n| "thing_name_#{n}"}
  end

  factory :adjective do
    sequence(:name) { |n| "adjective_name_#{n}"}
  end

  factory :sensing do
    thing
    adjective
  end
end