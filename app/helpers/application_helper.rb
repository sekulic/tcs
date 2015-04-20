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
  def is_active_page?(link_path)
    if current_page?(link_path)
      "active"
    else
      ""
    end
  end 
  def is_active_page_home?
    if current_page?(root_path) && request.env['ORIGINAL_FULLPATH'] == "/"
      "active"
    else
      ""
    end
  end    
  def active_page_category(cat_id)
    if request.env['ORIGINAL_FULLPATH'] == "/?category_id=#{cat_id}"
      "active"
    else
      ""
    end
  end         
end
