class Customer < ActiveRecord::Base
  belongs_to :account
  attr_accessible :email, :name
end
