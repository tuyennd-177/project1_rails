module ApplicationHelper
  def full_title(page_title)
    base_title = 'Ruby on Rails tutorial'
    page_title.blank? ? base_title : [page_title, base_title].join(' | ')
  end
end
