# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ingredient_recipe do
    recipe_id 1
    ingredient_id 1
    amount "MyString"
    preperation "MyString"
  end
end
