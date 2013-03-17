class Customer < ActiveRecord::Base
  belongs_to :account
  attr_accessible :email, :name, :account_id

  validates :email,
            :presence => true,
            :uniqueness => true,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
end
