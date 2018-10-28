module ApplicationHelper

  def top_collections
    res = User.joins(:items).group("users.id").order("count(users.id) DESC")
  end

end
