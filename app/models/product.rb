class Product < ActiveRecord::Base
  belongs_to :account
  attr_accessible :code, :description, :list_price, :name, :sale_price, :account_id

  validates_uniqueness_of :code
  validates_presence_of :name, :code, :list_price
end
