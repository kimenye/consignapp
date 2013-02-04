module ApplicationHelper
  def current_company
    if current_user.has_role? :admin
      Account.find_by_user_id(current_user.id)
    end
  end
end
