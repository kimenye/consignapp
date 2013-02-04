class User < ActiveRecord::Base
  rolify

  after_create :assign_role_after_create

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :temp_company_name, :source

  attr_accessor :source

  def assign_role_after_create
    if self.source == "registration"
      self.add_role("admin")
    end
  end
end
