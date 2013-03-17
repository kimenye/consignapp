# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    code "MyString"
    name "MyString"
    description "MyString"
    list_price "9.99"
    sale_price "9.99"
    account nil
  end
end
