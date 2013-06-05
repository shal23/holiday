# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :travel_agent_profile do
    name "MyString"
    company_name "MyString"
    address "MyString"
    company_url "MyString"
    about "MyText"
    avatar "MyString"
  end
end
