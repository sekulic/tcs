module ApplicationHelper
  def check_isadmin?
    unless current_user.try(:admin?)
      redirect_to root_path
    end
  end
  def full_title(page_title)
    title = "The Cultural Spotter"
    if page_title == ""
    title
    else
      "#{title} | #{page_title}"
    end
  end 
  def first_time_visiting?
    if session[:first_time].nil?
      return true
    else
      return false
    end
  end     
end
