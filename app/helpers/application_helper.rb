module ApplicationHelper

  def title
    @page_title ? "Rivendell Program | #{@page_title.titleize}" : 'Rivendell Program'
  end

end