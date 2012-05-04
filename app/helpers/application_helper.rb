module ApplicationHelper

  # Returns full title on per page basis
  def full_title(title)
    base_title = "Ruby on Rails Sample App"
    if title.empty?
      base_title
    else
      "#{base_title} | #{title}"
    end
  end
end
