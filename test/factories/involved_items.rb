# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :involved_item do
    product nil
    customer nil
    quantity 1
    transaction_type "MyString"
  end
end
