module ApplicationHelper
  def active_menu_item(path)
    current_page?(path) ? 'active' : ''
  end
end