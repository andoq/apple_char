# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    commentable_id 1
    commentable_type "MyString"
    user_name "MyString"
    content "MyText"
    email "MyString"
  end
end
