# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    type ""
    password "MyString"
    first_name "MyString"
    last_name "MyString"
    email "MyString"
    title "MyString"
  end
end
