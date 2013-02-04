class HomeController < ApplicationController
  def index
  end

  def home
    #check the role of the user...
    if current_user.has_role? :admin
      #now check if the user has setup a company
      account = Account.find_by_user_id(current_user.id)
      if account.nil?
        redirect_to setup_index_path
      end
    end
  end
end
