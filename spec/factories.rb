FactoryGirl.define do
  factory :movie do
    sequence(:name) { |n| "Example title #{n}" }
    year 2006
  end
end
