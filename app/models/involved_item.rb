class InvolvedItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :customer
  attr_accessible :quantity, :transaction_type, :product_id, :customer_id
end
