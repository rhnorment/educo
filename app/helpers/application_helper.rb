module ApplicationHelper

  # RENDER A DYNAMIC PAGE TITLE:
  def page_title
    @subtitle ? "EDUCO | #{@subtitle}" : 'EDUCO'
  end

end
