module ApplicationHelper

  # RENDER A DYNAMIC PAGE TITLE:
  def page_title
    @page_title ? "The Rivendell Program | #{@page_title}" : 'The Rivendell Program'
  end

end
