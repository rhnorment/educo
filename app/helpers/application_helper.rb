module ApplicationHelper

  # RENDER A DYNAMIC PAGE TITLE:
  def page_title
    @page_title ? "EDUCO | #{@page_title}" : 'EDUCO'
  end

end
