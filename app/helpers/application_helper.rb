module ApplicationHelper

  def top_collections
    res = User.joins(:items).where("items.status_id = ?", 1).group("users.id").order("count(users.id) DESC")
  end

end
