class Product < ActiveRecord::Base
  belongs_to :account
  attr_accessible :code, :description, :list_price, :name, :sale_price
end
