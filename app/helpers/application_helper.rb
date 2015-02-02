module ApplicationHelper

  # RENDER A DYNAMIC PAGE TITLE:
  def page_title
    @page_title ? "EDUCO | #{@page_title}" : 'EDUCO'
  end

  # ASSIGN ACTIVE CLASS TO THE ACTIVE CONTROLLER:
  def is_active?(controller)
    controller == controller_name ? 'active' : ''
  end

end
