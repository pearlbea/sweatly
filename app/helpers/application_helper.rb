module ApplicationHelper
  def tab_title(page_title = '')
    base_title = 'Sweatly'
    if page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end

  def current_admin_path?(test_path)
    request.path.split('/')[2] == test_path.split('/')[2] ? 'active' : ''
  end
end
