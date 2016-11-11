FactoryGirl.define do
  factory :movie do
    sequence(:name) { |n| "Example title #{n}" }
    year 2006
  end

  factory :poll do
    month { Date::MONTHNAMES[Date.today.month] }
    year { Date.today.year }
  end

  factory :poll_option do
  end
end
